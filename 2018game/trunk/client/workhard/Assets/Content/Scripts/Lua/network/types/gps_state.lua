--[[
    客户端gps状态
    none        没有设置
    ok          正常
    shutdown    关闭gps
    band_signal gps信号差
]]
return {
    none        = -1,
    ok          = 0,
    shutdown    = 1,
    band_signal = 2,
}
