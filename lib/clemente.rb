require 'nokogiri'
require 'open-uri'

require 'Clemente/client'

class Clemente
	
	def hello
		doc = Nokogiri::XML(open('http://gd2.mlb.com/components/game/mlb/year_2012/month_06/day_10/scoreboard.xml'))
		doc.xpath('//go_game').each do |g|
			puts g.xpath('.//game/@id')
			
			g.xpath('.//team').each do |t|
				team_name = t.attr('name')

				gt = t.xpath('.//gameteam')
				runs = gt.attr('R')
				hits = gt.attr('H')
				errors = gt.attr('E')

				puts "#{team_name}: #{runs} #{hits} #{errors}"
			end
			puts ''
		end
	end

end