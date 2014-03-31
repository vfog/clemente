module Clemente
  class Client

    module Game

      def game(game_id, date = Date.today)
        path = "%s/%s/%s" % [relative_path_for_date(date), game_id, "game.xml"]
        call path
      end

    end

  end
end
