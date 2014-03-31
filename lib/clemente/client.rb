require 'faraday'
require 'nokogiri'
require 'Date'

require 'clemente/client/boxscore'
require 'clemente/client/mini_scoreboard'
require 'clemente/client/scoreboard'

module Clemente
  class Client

    include Clemente::Client::Boxscore
    include Clemente::Client::MiniScoreboard
    include Clemente::Client::Scoreboard

    def initialize(endpoint = 'http://gd2.mlb.com/components/game/mlb/')
      @endpoint = endpoint
      @conn = Faraday.new
      @conn.url_prefix = @endpoint
      yield @conn if block_given?
    end

    def relative_path_for_date(date = Date.today)
      "year_%d/month_%02d/day_%02d" % [date.year, date.month, date.day]
    end

    def call(path)
      puts "calling %s%s" % [@endpoint, path]

      res = @conn.send :get, path
      doc = Nokogiri::XML(res.body)

      # yield doc if block_given?
      doc_to_hash doc
    end

    def attribute_hash(node)
      node.attributes.map {|key, value| [key, value.value]}
    end

    private

    def doc_to_hash doc
      node_to_hash doc.root
    end

    def node_to_hash node

        hash = Hash[ node.attributes.map {|key, value| [key.to_sym, value.value]} ]

        node.children.each do |child|
          unless child.name == '#cdata-section' || child.name == 'text'
            child_hash = node_to_hash child

            if hash[child.name.to_sym]
              if hash[child.name.to_sym].is_a?(Object::Array)
                hash[child.name.to_sym] = hash[child.name.to_sym] << child_hash
              else
                hash[child.name.to_sym] = [hash[child.name.to_sym], child_hash]
              end
            else
              hash[child.name.to_sym] = child_hash
            end
          end
        end

        return hash
    end
  end
end
