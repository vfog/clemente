require 'nokogiri'
require 'open-uri'

doc = Nokogiri::XML(open('http://gd2.mlb.com/components/game/mlb/year_2012/month_06/day_10/scoreboard.xml'))
doc.xpath('//go_game').each do |g|
	game = g.xpath('game')
	puts game.xpath('@id')
end