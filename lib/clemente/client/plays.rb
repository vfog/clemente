module Clemente
  class Client

    module Plays

      def plays(game_id, date = Date.today)
        path = "%s/%s/%s" % [relative_path_for_date(date), game_id, "plays.xml"]
        call path
      end

    end

  end
end
