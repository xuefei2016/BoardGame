# 玩家与服务器封包定义，服务器内部使用rpc
.netpack {
    # 接收消息的服务地址 前三位服务编号，第四位节点编号
    service 0 : integer
    # 消息编号
    msg_id 1 : integer
    # 消息数据
    body 2 : string
}
