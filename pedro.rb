require 'nokogiri'
require 'open-uri'

doc = Nokogiri::XML(open('http://gd2.mlb.com/components/game/mlb/year_2012/month_06/day_10/scoreboard.xml'))
doc.xpath('//go_game').each do |g|
	puts g.xpath('.//game/@id')
	g.xpath('.//team').each do |t|
		team_name = t.xpath('.//@name')
		runs = t.xpath('.//gameteam/@R')
		hits = t.xpath('.//gameteam/@H')
		errors = t.xpath('.//gameteam/@E')

		puts "#{team_name}: #{runs} #{hits} #{errors}"
	end
	puts ''
end