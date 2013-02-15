require 'nokogiri'
require 'open-uri'
require 'Date'

# class Clemente::Client
class Client

protected

  def fetch(path, date = Date.today)
    url = get_url(path, date)

    Nokogiri::XML(open(url))
  end 

private

  def get_url(path, date)
    "http://gd2.mlb.com/components/game/mlb/year_%d/month_%02d/day_%02d/%s" % [date.year, date.month, date.day, path]
  end

end