require 'clemente/mini_scoreboard_game'

module Clemente
  class Client

    # Methods for the mini scoreboard
    module MiniScoreboard

      def mini_scoreboard(date = Date.today)
        path = "%s/%s" % [relative_path_for_date(date), "miniscoreboard.xml"]

        games = []

        # create miniscoreboard games
        call path do |doc|

          # get all the games
          doc.xpath('//game').each do |game|
            params = game.attributes.map do |key, value|
              [key, value.value]
            end
            games.push(Clemente::MiniScoreboardGame.new(params))
          end

        end

        games
      end
    end
  end
end
