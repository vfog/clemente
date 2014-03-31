module Clemente
  class Client

    module Scoreboard

      def scoreboard(date = Date.today)
        path = "%s/%s" % [relative_path_for_date(date), "scoreboard.xml"]
        call path
      end

    end
  end
end
