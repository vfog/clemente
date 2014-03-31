module Clemente
  class Client

    module Inning

      def inning(inning, game_id, date = Date.today)
        path = "%s/%s/inning/inning_%s.xml" % [relative_path_for_date(date), game_id, inning]
        call path
      end

      def inning_all(game_id, date = Date.today)
        path = "%s/%s/inning/%s" % [relative_path_for_date(date), game_id, "inning_all.xml"]
        call path
      end

      def inning_scores(game_id, date = Date.today)
        path = "%s/%s/inning/%s" % [relative_path_for_date(date), game_id, "inning_Scores.xml"]
        call path
      end

      def inning_hit(game_id, date = Date.today)
        path = "%s/%s/inning/%s" % [relative_path_for_date(date), game_id, "inning_hit.xml"]
        call path
      end

    end

  end
end
