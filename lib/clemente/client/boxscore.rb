module Clemente
  class Client

    module Boxscore

      def boxscore(game_id, date = Date.today)
        relative_path = relative_path_for_date(date)
        path = "#{relative_path}/#{game_id}/boxscore.xml"

        game_boxscore = nil

        call path do |doc|
          boxscore_params = attribute_hash doc.root
          puts boxscore_params

          # get our linescore
          linescore doc.xpath('//linescore').first

          # get the pitchers
          doc.xpath("//pitching").each do |pitching|
            team_pitching pitching
          end

          # get the batters
          doc.xpath("//batting").each do |batting|
            team_batting bating
          end
        end

        game_boxscore
      end

      private

      def linescore(linescore_node)
        linescore_params = attribute_hash linescore_node
        puts linescore_params

        linescore_node.xpath("//inning").each do |inning|
          inning_params = attribute_hash inning
          puts inning_params
        end

        nil
      end

      def team_pitching(pitching_node)
        pitching_params = attribute_hash pitching_node
        puts pitching_params

        pitching_node.xpath("//pitcher").each do |pitcher|
          pitcher_params = attribute_hash pitcher
          puts pitcher_params
        end
      end

      def team_batting(batting_node)
        batting_params = attribute_hash batting_node

        batting_node.xpath("//batter").each do |batter|
          batter_params = attribute_hash batter
        end
      end

    end

  end
end
