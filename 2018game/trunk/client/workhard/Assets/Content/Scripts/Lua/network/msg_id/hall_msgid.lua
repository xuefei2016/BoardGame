-- 大厅服务消息编号定义
return {
    -- c2s 玩家请求进入大厅,body none
    req_enter_hall = 1,
    -- s2c 玩家进入大厅失败,body req_enter_hall_fail
    req_enter_hall_fail = 2,
    -- s2c 玩家进入大厅成功,body none
    req_enter_hall_ok = 3,

    -- c2s 玩家离开大厅,body none
    req_left_hall = 6,
    -- s2c 玩家离开大厅失败,body req_left_hall_fail
    req_left_hall_fail = 7,
    -- s2c 玩家离开大厅成功,body none
    req_left_hall_ok = 8,

    -- c2s 玩家查询桌子信息,body none
    get_table_info = 11,
    -- s2c 玩家查询房间桌子信息失败,body get_table_info_fail
    get_table_info_fail = 12,

    -- s2c 玩家的桌子信息,body your_table_info
    your_table_info = 13,

    -- s2c 通知玩家已经进入桌子,body you_enter_table
    you_enter_table = 14,
    -- s2c 通知玩家已经离开桌子,body none
    you_left_table = 15,

    -- c2s 玩家请求进入公共房间桌子,body req_join_public_table
    req_join_public_table = 21,
    -- s2c 玩家请求进入公共房间失败,body req_join_public_table_fail
    req_join_public_table_fail = 22,

    -- c2s 玩家请求创建私有房间桌子,body req_create_private_table
    req_create_private_table = 31,
    -- s2c 玩家请求创建私有房间失败,body req_create_private_table_fail
    req_create_private_table_fail = 32,
    -- s2c 玩家请求创建私有房间成功,body req_create_private_table_ok
    req_create_private_table_ok = 33,

    -- c2s 玩家请求进入私有房间,body req_join_private_table
    req_join_private_table = 41,
    -- s2c 玩家请求进入私有房间失败,req_join_private_table_fail
    req_join_private_table_fail = 42,

    -- c2s 玩家请求查询游戏录像列表,body req_get_play_records
    req_get_play_records    = 51,
    -- s2c 发送玩家游戏录像列表，只有记录简报, body your_play_records
    your_play_records       = 52,

    -- c2s 玩家请求读取录像列表
    req_get_play_record_list = 53,
    -- s2c 玩家的录像列表 body your_play_record_list
    your_play_record_list = 54,

    -- c2s 玩家请求查询游戏录像详细数据
    req_get_play_record_data    = 56,
    -- s2c 发送玩家游戏录像详细数据
    your_play_record_data       = 57,
}
