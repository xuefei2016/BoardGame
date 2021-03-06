-- 玩家代理消息
return {
    -- c2s 查询大厅列表,body none
    get_hall_list = 1,
    -- s2c 返回注册的大厅列表,body hall_list
    hall_list   = 2,
    -- c2s 查询大厅信息,body get_hall_info
    get_hall_info = 3,
    -- s2c 返回大厅信息,body hall_info
    hall_info   = 4,
    -- c2s 查询大厅版本信息 body get_hall_version_info
    get_hall_version_info = 5,
    -- s2c 大厅版本信息 body hall_version_info
    hall_version_info = 6,

    -- 查询私有房间信息
    req_query_private_table = 11,
    -- 相应私有房间信息
    ack_query_private_table = 12,

    -- c2s 查询玩家信息,body get_user_info
    get_user_info = 21,
    -- s2c 发送玩家信息 body user_info
    user_info = 22,

    -- 请求更新gps地址 body req_update_gps
    req_update_gps = 31,
    -- 更新gps地址结果 body common.error
    ack_update_gps = 32,

    --玩家支付
    req_pay = 101,
    --支付结果
    ack_pay = 102,
}
