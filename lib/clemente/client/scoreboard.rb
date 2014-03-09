module Clemente
  class Scoreboard

    # Game Over = go_game
    # <go_game>
    #   <game id="2014_03_08_seamlb_sfnmlb_1" league="AN" status="FINAL" start_time="3:05PM" home_code=""/>
    #   <team name="Giants" code="">
    #     <gameteam R="3" H="6" E="2"/>
    #   </team>
    #   <team name="Mariners" code="">
    #     <gameteam R="18" H="18" E="0"/>
    #   </team>
    #   <w_pitcher wins="2" losses="0">
    #     <pitcher name="E. Ramirez"/>
    #   </w_pitcher>
    #   <l_pitcher wins="1" losses="1">
    #     <pitcher name="R. Vogelsong"/>
    #   </l_pitcher>
    #   <sv_pitcher saves="0">
    #     <pitcher name=". "/>
    #   </sv_pitcher>
    # </go_game>
    # <go_game>
    #   <game id="2014_03_08_oakmlb_colmlb_1" league="AN" status="FINAL" start_time="3:10PM" home_code=""/>
    #   <team name="Rockies" code="">
    #     <gameteam R="5" H="15" E="0"/>
    #   </team>
    #   <team name="Athletics" code="">
    #     <gameteam R="4" H="12" E="0"/>
    #   </team>
    #   <w_pitcher wins="1" losses="0">
    #     <pitcher name="C. Bettis"/>
    #   </w_pitcher>
    #   <l_pitcher wins="0" losses="1">
    #     <pitcher name="J. Lindblom"/>
    #   </l_pitcher>
    #   <sv_pitcher saves="0">
    #     <pitcher name=". "/>
    #   </sv_pitcher>
    # </go_game>

    # Game in Progress = ig_game
    # <ig_game outs="1">
    #   <game id="2014_03_08_balmlb_bosmlb_1" league="AA" status="IN_PROGRESS" start_time="7:05PM" home_code=""/>
    #   <team name="Red Sox" code="">
    #     <gameteam R="0" H="1" E="3"/>
    #   </team>
    #   <team name="Orioles" code="">
    #     <gameteam R="4" H="7" E="0"/>
    #   </team>
    #   <inningnum inning="6" half="B"/>
    #   <pitcher name="M. Wright"/>
    #   <batter name="C. Brown"/>
    # </ig_game>
    # <ig_game outs="0">
    #   <game id="2014_03_08_seamlb_lanmlb_1" league="AN" status="IMMEDIATE_PREGAME" start_time="9:05PM" home_code=""/>
    #   <team name="Dodgers" code="">
    #     <gameteam R="0" H="0" E="0"/>
    #   </team>
    #   <team name="Mariners" code="">
    #     <gameteam R="0" H="0" E="0"/>
    #   </team>
    #   <inningnum inning="1" half="T"/>
    #   <pitcher name="J. Beckett"/>
    #   <batter name="A. Almonte"/>
    # </ig_game>

    # Upcoming Game = sg_game
    # <sg_game>
    #   <game id="2014_03_09_bosmlb_pitmlb_1" league="AN" status="PRE_GAME" start_time="1:05PM" home_code=""/>
    #   <team name="Pirates" code="">
    #     <gameteam R="0" H="0" E="0"/>
    #   </team>
    #   <team name="Red Sox" code="">
    #     <gameteam R="0" H="0" E="0"/>
    #   </team>
    #   <p_pitcher teamcode="" wins="1" losses="0" era="0.00">
    #     <pitcher name="C. Morton"/>
    #   </p_pitcher>
    #   <p_pitcher teamcode="" wins="0" losses="1" era="9.00">
    #     <pitcher name="C. Buchholz"/>
    #   </p_pitcher>
    # </sg_game>
    # <sg_game>
    #   <game id="2014_03_09_detmlb_miamlb_1" league="AN" status="PRE_GAME" start_time="1:05PM" home_code=""/>
    #   <team name="Marlins" code="">
    #     <gameteam R="0" H="0" E="0"/>
    #   </team>
    #   <team name="Tigers" code="">
    #     <gameteam R="0" H="0" E="0"/>
    #   </team>
    #   <p_pitcher teamcode="" wins="0" losses="0" era="3.00">
    #     <pitcher name="T. Koehler"/>
    #   </p_pitcher>
    #   <p_pitcher teamcode="" wins="0" losses="1" era="7.20">
    #     <pitcher name="R. Porcello"/>
    #   </p_pitcher>
    # </sg_game>

  end
end
