-- 登录服务消息编号定义
return {
    -- c2s 玩家登录,body user_login
    user_login = 1,
    -- s2c 玩家登录失败,body user_login_fail
    user_login_fail = 2,
    -- s2c 玩家登录成功,body user_login_ok
    user_login_ok = 3,

    -- c2s 创建玩家帐号,body create_user
    create_user = 5,
    -- s2c 创建玩家帐号成功,body none
    create_user_ok = 6,
    -- s2c 创建玩家帐号失败,body create_user_fail
    create_user_fail = 7,

    -- s2c 玩家被踢掉,body user_kick
    user_kick = 10,

    -- c2s 读取版本信息,body none
    get_version_info = 101,
    -- s2c 向玩家发送版本信息,body version_info
    version_info = 102,
}
