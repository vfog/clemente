module Clemente
  class Client

    module Players

      def players(game_id, date = Date.today)
        path = "%s/%s/%s" % [relative_path_for_date(date), game_id, "players.xml"]
        call path
      end

    end

  end
end
