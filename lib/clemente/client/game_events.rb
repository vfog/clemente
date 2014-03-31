module Clemente
  class Client

    module GameEvents

      def game_events(game_id, date = Date.today)
        path = "%s/%s/%s" % [relative_path_for_date(date), game_id, "game_events.xml"]
        call path
      end

    end

  end
end
