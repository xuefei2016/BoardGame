# 登录服务消息定义
# 版本信息
.version_info {
    # 版本说明
    desc 0 : string
}
# 登陆参数
.param {
    #参数名称
    name 0 : string
    #参数值
    value 1 : string
}
# 登录帐号
.user_login {
    # 登录类型，帐号，手机号，邮箱。联营帐号等，定义types/login_type.lua
    login_type 0 : integer
    # 登陆参数
    # 账号密码登陆 user_name,user_pass
    # 微信登陆 code或access_token,openid,refresh_token
    params 101 : *param
}
# 登录失败
.user_login_fail {
    desc 0 : string     #错误原因
    code 1 : integer    #错误代码
}
# 登录成功
# 微信登录成功需要保存服务器返回的access_token refresh_token
.user_login_ok {
    # 登陆类型
    login_type 0 : integer
    # 玩家编号
    user_id 1 : integer
    # 游戏验证密钥
    auth_code 11 : string
    # 登录服务器地址 127.0.0.1:999格式
    gate_address 12 : string
    # 网关上的登录服务地址，第一个封包必须是登录
    gate_service 13 : integer
    #其他接入信息
    params 101 : *param
}
# 创建帐号
.create_user {
    # 创建类型，帐号，手机号，邮箱。联营帐号等
    login_type 0 : integer
    # 帐号名称
    user_name 1 : string
    # 帐号密码
    user_pass 2 : string
}
# 创建失败
.create_user_fail {
    # 错误原因
    desc 0 : string
}
# 玩家被踢掉
.user_kick {
    # 踢掉的原因说明
    desc 0 : string
}
