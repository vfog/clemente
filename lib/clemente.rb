require 'nokogiri'
require 'open-uri'
# require 'clemente/mini_scoreboard_client'

require 'clemente/mini_scoreboard_client'

module Clemente
	
	def self.hello
		# mini_scoreboard = Clemente::MiniScoreboardClient.new
		# mini_scoreboard.get_mini_scoreboard(Date.new(2012, 9, 11))

    puts 'hello world'

    client = Clemente::MiniScoreboardClient.new
    client.get_mini_scoreboard(Date.new(2012, 9, 11))

		return
	end

end