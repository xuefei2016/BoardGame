--游戏消息编号
return {
    -- s2c 桌子状态
    table_info          = 1013,

    -- s2c 广播所有玩家游戏开始，同步游戏数据，body table_info
    game_start          = 1041,
    -- s2c 广播桌子切换状态到回合开始,body round_start
    round_start         = 1042,
    -- s2c 广播桌子切换状态到发牌 body begin_deal
    begin_deal          = 1043,
    -- s2c 广播桌子切换状态换牌 body begin_swap_cards
    begin_swap_cards    = 1044,
    -- s2c 广播桌子切换状态到定缺 body none
    begin_ding_que      = 1045,
    -- s2c 广播桌子切换状态到游戏 body none++
    begin_play          = 1046,
    -- s2c 广播桌子切换状态到 body round_over
    round_over          = 1047,
    -- s2c 广播游戏结束，庄家输光，超过设置的局数 body game_over
    game_over           = 1048,

    --[[
        c2s 玩家进入桌子后请求准备好,body none
    ]]
    req_ready           = 1051,
    -- s2c 请求准备好失败,body req_ready_fail
    req_ready_fail      = 1052,
    --[[
        s2c 广播其他玩家准备好,body user_is_ready
    ]]
    user_ready          = 1053,

    -- c2s 请求换牌,body req_swap_cards
    req_swap_cards      = 1071,
    -- s2c 换牌请求是否成功，body req_swap_cards_fail
    req_swap_cards_fail = 1072,
    --[[
        s2c 通知其他玩家换牌,body user_swap_cards
        这个仅仅通知玩家交换几张牌，换牌结果由swap_cards_results通知
    ]]
    user_swap_cards     = 1073,
    -- s2c 广播换牌结果,body class_swap_cards_results
    swap_cards_results  = 1076,

    -- s2c 玩家请求定缺,body req_ding_que
    req_ding_que        = 1081,
    -- s2c 玩家请求定缺失败,body req_ding_que_fail
    req_ding_que_fail   = 1082,
    -- s2c 通知其他玩家下注,body user_ding_que
    user_ding_que       = 1083,

    --s2c ding_que result
    ding_que_result = 1084,

    -- s2c 广播玩家摸牌,body user_draw_card
    user_draw_card      = 1086,

    -- s2c 广播回合开始,body new_turn
    --new_turn            = 1091,
    -- s2c 广播本回合结束,body turn_over
   -- turn_over           = 1092,
    -- s2c 通知玩家可以行动了,body you_can_act
    you_can_act         = 1096,

    --c2s user req action 
    req_user_act          = 1101,

    --s2c 
    req_user_act_ok     =   1104,

    --s2c 
    req_user_act_fail     = 1103,

    --s2c user act
    user_act_done               = 1102,

--[[
    -- c2s 玩家请求放弃行动（过）,body none
    req_pass            = 1101,
    -- s2c 玩家请求放弃（过）失败,body req_pass_fail
    req_pass_fail       = 1102,
    -- s2c 广播玩家放弃行动（过）,body user_pass
    user_pass           = 1103,
-
    -- c2s 玩家请求出牌,body req_discard
    req_discard         = 1106,
    -- s2c 玩家请求出牌失败，body req_discard_fail
    req_discard_fail    = 1107,
    -- s2c通知玩家出牌,body user_discard
    user_discard        = 1108,

    -- c2s 玩家请求碰牌,body req_peng
    req_peng            = 1111,
    -- s2c 玩家请求碰牌失败,body req_peng_fail
    req_peng_fail       = 1112,
    -- s2c 通知玩家碰牌,body user_peng
    user_peng           = 1113,

    -- c2s 玩家请求杠牌,body req_gang
    req_gang            = 1121,
    -- s2c 玩家请求杠牌失败,body req_gang_fail
    req_gang_fail       = 1122,
    -- s2c 通知玩家杠牌,body user_gang
    user_gang           = 1123,

    -- c2s 玩家请求胡牌,body req_hu
    req_hu              = 1131,
    -- s2c 玩家请求胡牌失败,body req_hu_fail
    req_hu_fail         = 1132,
    -- s2c 通知玩家胡牌,body user_hu
    user_hu             = 1133,
]]
    --s2c   ask user discard
   -- user_can_discard = 1105,



    -- c2s 玩家请求出牌,body req_discard
  --  req_discard         = 1106,
    -- s2c 玩家请求出牌失败，body req_discard_fail
   -- req_discard_fail    = 1107,
    -- s2c通知玩家出牌,body user_discard
    user_discard        = 1108,

    --s2c user scored ,(In game_play. not for round end )
    user_get_score =    1121,

    -- c2s 玩家请求开始新局,body none
    req_start_round     = 1141,
    -- s2c 玩家请求开始新局失败，body req_start_round_fail
    req_start_round_fail= 1142,
    -- s2c 广播玩家请求开始新局,user_start_round
    user_start_round    = 1143,

    -- c2s 玩家请求开始新游戏,body none
    req_start_game      = 1151,
    -- s2c 玩家请求开始新游戏失败,body req_start_game_fail
    req_start_game_fail = 1152,
    -- s2c 广播玩家请求开始新游戏,body user_start_game
    user_start_game     = 1153,

    -- c2s 玩家请求退出游戏,body none
    req_quit_game       = 1156,
    -- s2c 玩家请求退出游戏失败,body req_quit_game_fail
    req_quit_game_fail  = 1157,
    -- s2c 广播玩家退出游戏,body user_quit_game
    user_quit_game      = 1158,
}
