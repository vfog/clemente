require 'nokogiri'
require 'open-uri'

require_relative './clemente/mini_scoreboard_client'

class Clemente
	
	def hello
		mini_scoreboard = MiniScoreboardClient.new #Clemente::MiniScoreboardClient.new
		mini_scoreboard.get_mini_scoreboard(Date.new(2012, 9, 11))

		return
	end

end

c = Clemente.new
c.hello