require 'nokogiri'
require 'open-uri'
require 'Date'
require 'clemente/client'

module Clemente
  class MiniScoreboardClient < Clemente::Client

    def get_mini_scoreboard(date = Date.today)
      mini_scoreboard = fetch('miniscoreboard.xml', date)
      mini_scoreboard.xpath('//game').each do |g|
        puts g.attr('id')
      end

      return
    end

  end
end