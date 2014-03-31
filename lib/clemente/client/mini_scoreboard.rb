module Clemente
  class Client

    # Methods for the mini scoreboard
    module MiniScoreboard

      def mini_scoreboard(date = Date.today)
        path = "%s/%s" % [relative_path_for_date(date), "miniscoreboard.xml"]
        call path
      end
    end
  end
end
