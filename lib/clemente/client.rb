require 'faraday'
require 'nokogiri'
require 'Date'

require 'clemente/client/mini_scoreboard'

module Clemente
  class Client

    include Clemente::Client::MiniScoreboard

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

      yield doc if block_given?
    end
  end
end
