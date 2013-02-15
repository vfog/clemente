require 'nokogiri'
require 'open-uri'

class Clemente
	
	def hello
		mini_scoreboard = MiniScoreboardClient.new #Clemente::MiniScoreboardClient.new
		mini_scoreboard.get_mini_scoreboard(Date.new(2012, 9, 11))

		return
	end

end

require 'clemente/mini_scoreboard_client'