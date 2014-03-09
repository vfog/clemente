module Clemente
  class MiniScoreboardGame

    @@attributes = [:id,
                    :venue,
                    :game_pk,
                    :time,
                    :time_date,
                    :time_date_aw_lg,
                    :time_date_hm_lg,
                    :time_zone,
                    :ampm,
                    :away_time,
                    :away_time_zone,
                    :away_ampm,
                    :home_time,
                    :home_time_zone,
                    :home_ampm,
                    :game_type,
                    :tiebreaker_sw,
                    :original_date,
                    :time_zone_aw_lg,
                    :time_zone_hm_lg,
                    :time_aw_lg,
                    :aw_lg_ampm,
                    :tz_aw_lg_gen,
                    :time_hm_lg,
                    :hm_lg_ampm,
                    :tz_hm_lg_gen,
                    :venue_id,
                    :scheduled_innings,
                    :away_name_abbrev,
                    :home_name_abbrev,
                    :away_code,
                    :away_file_code,
                    :away_team_id,
                    :away_team_city,
                    :away_team_name,
                    :away_division,
                    :away_league_id,
                    :away_sport_code,
                    :home_code,
                    :home_file_code,
                    :home_team_id,
                    :home_team_city,
                    :home_team_name,
                    :home_division,
                    :home_league_id,
                    :home_sport_code,
                    :day,
                    :gameday_sw,
                    :double_header_sw,
                    :game_nbr,
                    :tbd_flag,
                    :away_games_back,
                    :home_games_back,
                    :away_games_back_wildcard,
                    :home_games_back_wildcard,
                    :venue_w_chan_loc,
                    :away_league_id_spring,
                    :away_split_squad,
                    :home_league_id_spring,
                    :home_split_squad,
                    :gameday_link,
                    :away_win,
                    :away_loss,
                    :home_win,
                    :home_loss,
                    :game_data_directory,
                    :league,
                    :top_inning,
                    :status,
                    :ind,
                    :inning,
                    :outs,
                    :away_team_runs,
                    :home_team_runs,
                    :away_team_hits,
                    :home_team_hits,
                    :away_team_errors,
                    :home_team_errors,
                    :away_team_hr,
                    :home_team_hr,
                    :away_team_sb,
                    :home_team_sb,
                    :away_team_so,
                    :home_team_so,
                    :home_audio_link,
                    :away_audio_link,
                    :tv_station,
                    :mlbtv_link,
                    :reason,
                    :runner_on_base_status ]

    @@attributes.each do |attr|
      class_eval { attr_reader "#{attr}" }
    end

    def initialize(params = {})
      params.each do |key, value|
        if @@attributes.include? key.to_sym then
          instance_variable_set("@#{key}", value)
        else
          puts "MiniScoreboard attribute #{key} not found"
        end
      end
    end
  end
end