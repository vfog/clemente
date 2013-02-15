require 'nokogiri'
require 'open-uri'
require 'Date'

module Clemente
  class Client

    def hello
      puts "Client hello"
    end

  protected

    def fetch(path, date = Date.today)
      doc = get_document_stream(get_url(path, date))    
      Nokogiri::XML(doc)
    end 

  private

    def get_url(path, date)
      "http://gd2.mlb.com/components/game/mlb/year_%d/month_%02d/day_%02d/%s" % [date.year, date.month, date.day, path]
    end

    def get_document_stream(url)
      open(url)
    end

  end
end