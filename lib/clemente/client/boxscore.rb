module Clemente
  class Client

    module Boxscore

      def boxscore(game_id, date = Date.today)
        path = "%s/%s/%s" % [relative_path_for_date(date), game_id, "boxscore.xml"]
        call path
      end

    end

  end
end
