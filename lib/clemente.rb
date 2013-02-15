require 'nokogiri'
require 'open-uri'
# require 'clemente/mini_scoreboard_client'

require 'clemente/client'

module Clemente
	
	def self.hello
		# mini_scoreboard = Clemente::MiniScoreboardClient.new
		# mini_scoreboard.get_mini_scoreboard(Date.new(2012, 9, 11))

    puts 'hello world'

    client = Clemente::Client.new
    client.hello

		return
	end

end