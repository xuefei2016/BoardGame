--[[
    游戏独立辅助函数，封装麻将相关的算法、工具函数
    这个函数集封装都是与全局状态无关的函数
]]

local print_r = require "print_r"
local auto_table = require("auto_table")
local auto_table_with_eye = require("auto_table_with_eye")

_G.mj_color= _G.mj_color or require("mj_color")

--麻将算法
_G.mj_logic = _G.mj_logic or {}
--[[
    麻将规则
    ding_que    是否必须缺一门才能胡
]]
_G.mj_rule = _G.mj_rule or {
    ding_que = false
}

--玩家手中最多14张牌
--local max_hand_cards = 14

local mj_logic = _G.mj_logic
local mj_rule = _G.mj_rule
local mj_color = _G.mj_color

local table = require("table")
local math = require("math")

--牌序列转化为字符串
function mj_logic.get_cards_s(hand_cards)
    local s = ""
    for i,card in pairs(hand_cards) do
        if i>0 then
            s=s..string.format(" %d",card)
        else
            s=s..string.format("%d",card)
        end
    end

    return s
end
--根据点数和索引生成一张牌
function mj_logic.card_index(color,point)
    return color*10+point
end
--得到牌花色
function mj_logic.card_color(card)
    return math.floor(card/10)
end
--得到牌点数
function mj_logic.card_point(card)
    return card%10
end
--table的key进行排序，返回一个key排好的升序table
function mj_logic.sort_key(src)
    local t = {}
    for k,v in pairs(src) do
        table.insert(t,k)
    end
    table.sort(t)
    return t
end
--统计牌数量
function mj_logic.count_cards( cards )
    local t = {}
    local n
    for _,card in pairs(cards) do
        t[card] = (t[card] or 0)+1
    end
    return t
end
--统计牌类型数量
function mj_logic.count_colors( cards )
    local t = {}
    local color
    for _,card in pairs(cards) do
        color = mj_logic.card_color(card)
        t[color]=(t[color] or 0)+1
    end
    return t
end

--从序列删除一张牌
function mj_logic.remove_card(cards,dst)
    for i,card in pairs(cards) do
        if card==dst then
            table.remove(cards, i)
            return true
        end
    end
    return false
end

--从牌组中删除另一组,成功返回true+新的牌组，失败返回false+旧的牌组
function mj_logic.remove_cards(cards,rcs)
    local rcc = mj_logic.count_cards(rcs)
    local dst = {}

    local cn
    for _,card in pairs(cards) do
        cn = rcc[card] or 0
        if cn>0 then
            rcc[card]=cn-1
        else
            table.insert(dst,card)
        end
    end

    return dst
end
--得到一组索引指定的牌，index不会重复
function mj_logic.get_index_cards(cards,indexs)
    local dst = {}
    for _,index in pairs(indexs)do
        table.insert(dst,cards[index])
    end
    return dst
end
--追加一组牌到尾部
function mj_logic.add_cards(l,r)
    for _,v in pairs(r) do
        table.insert(l,v)
    end
    return l
end

--[[
    分析牌组，统计牌数量和类型数量
    返回
        total_num       牌总数
        card_nums       每种麻将数量
        color_nums      每种类型数量
        one_cards       一张牌列表
        two_cards       两张牌列表
        three_cards     三张牌列表
        four_cards      四张牌列表
        color_cards     每种花色牌列表
]]
function mj_logic.analyse_cards(cards)
    local t = {
        total_num = 0,
        card_nums = {},
        color_nums = {},
        one_cards = {},
        two_cards = {},
        three_cards = {},
        four_cards = {},
        color_cards = {{},{},{}}
    }

    local card_nums = t.card_nums
    local color_nums = t.color_nums
    local one_cards = t.one_cards
    local two_cards = t.two_cards
    local three_cards = t.three_cards
    local four_cards = t.four_cards
    local color_cards = t.color_cards

    local n
    local color

    for _,card in pairs(cards) do
        t.total_num = t.total_num+1

        --统计牌数量
        n = card_nums[card]
        if n then
            card_nums[card]=n+1
        else
            card_nums[card] = 1
        end
        --统计花色数量
        color = mj_logic.card_color(card)
        n = color_nums[color]
        if n then
            color_nums[color]=n+1
        else
            color_nums[color] = 1
        end

        if color_cards[color] then 
             table.insert(color_cards[color],card)
        else 
            print(" what ? :"..tostring(color_cards.color))
            print("no card color!!! card is :"..card.."  card_color is :"..color.."color type is :"..type(color))
            print("color_cards table is :")
            for tmpk,tmpv in pairs(color_cards) do 
                    print("k is :"..tmpk)
                    print("k type is :"..type(tmpk).." and v is:"..type(tmpv))
            end
        end    
    end

    --一二三四分类
    for k,v in pairs(card_nums) do
        if v==1 then
            table.insert(one_cards,k)
        end
        if v==2 then
            table.insert(two_cards,k)
        end
        if v==3 then
            table.insert(three_cards,k)
        end
        if v==4 then
            table.insert(four_cards,k)
        end
    end

    return t
end

--[[
    检查是否刻合法的刻子或刻子或刻子+eye
]]
function mj_logic.check_form(form,card_num,eye_num)
    --print("check_form",form,card_num,eye_num)
    local rn=card_num%3
    if rn==0 then
        if not auto_table[form] then
            --print("check_no_eye(), no from",mj_logic.get_cards_s(form))
            return false,eye_num
        end
        return true,eye_num
    end
    if rn==2 then
        if eye_num>0 then
            --print("check_form(),eye_num",eye_num)
            return false,eye_num+1
        end

        if form==2 then
            return true,eye_num+1
        end

        if not auto_table_with_eye[form] then
            --print("check_with_eye(), no from",form)
            return false,eye_num+1
        end
        return true,eye_num+1
    end
    --print("check_form(),rn",rn)
    return false,eye_num
end

--[[
    是否能够胡牌
    这个函数只是检测
]]
function mj_logic.get_hu_info(peng_cards,gang_cards,hand_cards)
    --胡牌信息
    local hu_info = {
        is_hu = false,
    }
    local card_num = #hand_cards
    --print("card_num",card_num)

    --必须符合
    if card_num%3~=2 then
        hu_info.desc=string.format("card_num(%d)%%3~=2",card_num)
        return hu_info
    end

    --统计牌数量
    local counter = mj_logic.count_cards(hand_cards)

    --检查定缺
   -- if mj_rule.ding_que then
        local colors = {
            [mj_color.wan]=0,
            [mj_color.tong]=0,
            [mj_color.tiao]=0,
            }
        local color

        for card,_ in pairs(counter) do
            color = mj_logic.card_color(card)
            colors[color]=1
        end

        if colors[mj_color.wan]+colors[mj_color.tong]+colors[mj_color.tiao]>2 then
            hu_info.desc="flower pig"
            return hu_info
        end
   -- end

     --add que info
     hu_info.que_colors = {}
    for i,v in pairs (colors) do
                if v == 0 then 
            table.insert( hu_info.que_colors,i)
            end
    end
    --print("counter")
    --print_r(counter)

    --检查是否七对
    if peng_cards and  gang_cards then 
        if (#peng_cards)==0 and (#gang_cards)==0 then
            hu_info.is_qi_dui = true
            if #hand_cards~= 14 then    
                hu_info.is_qi_dui = false
            else     
                for _,num in pairs(counter) do
                    if num~=2 and num~=4 then
                        hu_info.is_qi_dui = false
                        break
                    end
                end
            end
            if hu_info.is_qi_dui then
                hu_info.is_hu = true
                return hu_info
            end
        end
    end

    local sorted = mj_logic.sort_key(counter)
    --print("sorted")
    --print_r(sorted)

    --一组牌型
    local form=0
    --牌型中的牌数量
    local form_card_num=0
    --上一个牌
    local last=0
    local ok
    local eye_num=0
    --牌的数量
    local cn
    local sorted_num = #sorted
    for i,card in pairs(sorted) do
        cn = counter[card]
        if i==1 or last+1==card then
            --是连续的牌
            form=form*10+cn
            form_card_num=form_card_num+cn
        else
            ok,eye_num = mj_logic.check_form(form,form_card_num,eye_num)
            if not ok then
                hu_info.desc="check form fail"
                return hu_info
            end

            form=cn
            form_card_num=cn
        end
        last=card

        if i==sorted_num then
            ok,eye_num = mj_logic.check_form(form,form_card_num,eye_num)
            if not ok then
                hu_info.desc="check form fail"
                return hu_info
            end
        end
    end

    hu_info.is_hu = true
    return hu_info
end

--[[麻将番判断，传入的牌必须是经过get_hu_info()验证的牌组
    参数
    hu_info     get_hu_info返回的结果，分析结果保存到到这里
    hand_info   hand_cards经过analyse_card分析的结果
    hand_cards  玩家手中的牌
    peng_cards  碰的牌
    gang_cards  杠的牌
]]
--是否对对胡(大对子)
function mj_logic.check_dui_dui_hu(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    hu_info.is_dui_dui_hu = false

    if hu_info.is_qi_dui then
        return false
    end

    --有杠
   -- if #gang_cards>0 then
     --   return false
   -- end

    --对牌超过1对
    if #hand_info.two_cards>1 then
        return false
    end

    --有四张牌
    if #hand_info.four_cards>0 then
        return false
    end

    --有单牌
    if #hand_info.one_cards>0 then
        return false
    end
    hu_info.is_dui_dui_hu = true
    return true
end

--是否清一色
function mj_logic.check_qing_yi_se(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    hu_info.is_qing_yi_se = false

    local color = mj_logic.card_color(hand_cards[1])
    --统计手牌花色
    for _,card in pairs(hand_cards) do
        if mj_logic.card_color(card)~=color then
            return false
        end
    end
    --统计碰牌花色
    for _,card in pairs(peng_cards) do
        if mj_logic.card_color(card)~=color then
            return false
        end
    end
    --统计杠牌花色
    for _,card in pairs(gang_cards) do
        if mj_logic.card_color(card)~=color then
            return false
        end
    end
    hu_info.is_qing_yi_se = true
    return true
end
--检查根
function mj_logic.check_gen(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    hu_info.gen = #gang_cards+#hand_info.four_cards

    local tmp_peng_gen = 0
    
    for i,v in ipairs(peng_cards) do 
            local tmp_count = hand_info.card_nums[v] 
            if tmp_count then 
                if tmp_count == 1 then 
                    tmp_peng_gen = tmp_peng_gen+1
                end
            end    
            
    end
    hu_info.gen = hu_info.gen + tmp_peng_gen
    return hu_info.gen 
end
--检查带幺九
function mj_logic.check_dai_yao_jiu(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    hu_info.is_dai_yao_jiu = false

    if (#peng_cards)>0 then
        return false
    end
    if (#gang_cards)>0 then
        return false
    end

    local color,point
    --不能有其他花色，点数
    for card,_ in pairs(hand_info.card_nums) do
        color = mj_logic.card_color(card)
        point = mj_logic.card_point(card)
        if color~= mj_color.wan and color~= mj_color.tiao and color~= mj_color.tong then
            return false
        end
        if point>3 and point<7 then
            return false
        end
    end

    local forms = {
    --检查1-3万
        {hand_info.card_nums[mj_logic.card_index(mj_color.wan,1)],
        hand_info.card_nums[mj_logic.card_index(mj_color.wan,2)],
        hand_info.card_nums[mj_logic.card_index(mj_color.wan,3)],},
    --检查7-9万
        {hand_info.card_nums[mj_logic.card_index(mj_color.wan,9)],
        hand_info.card_nums[mj_logic.card_index(mj_color.wan,7)],
        hand_info.card_nums[mj_logic.card_index(mj_color.wan,8)],},
    --检查1-3条
        {hand_info.card_nums[mj_logic.card_index(mj_color.tiao,1)],
        hand_info.card_nums[mj_logic.card_index(mj_color.tiao,2)],
        hand_info.card_nums[mj_logic.card_index(mj_color.tiao,3)],},
    --检查7-9条
        {hand_info.card_nums[mj_logic.card_index(mj_color.tiao,9)],
        hand_info.card_nums[mj_logic.card_index(mj_color.tiao,7)],
        hand_info.card_nums[mj_logic.card_index(mj_color.tiao,8)],},
    --检查1-3筒
        {hand_info.card_nums[mj_logic.card_index(mj_color.tong,1)],
        hand_info.card_nums[mj_logic.card_index(mj_color.tong,2)],
        hand_info.card_nums[mj_logic.card_index(mj_color.tong,3)],},
    --检查7-9筒
        {hand_info.card_nums[mj_logic.card_index(mj_color.tong,9)],
        hand_info.card_nums[mj_logic.card_index(mj_color.tong,7)],
        hand_info.card_nums[mj_logic.card_index(mj_color.tong,8)],},
    }

    local n1,n2,n3
    for _,form in pairs(forms) do
        n1=form[1] or 0
        n2=form[2] or 0
        n3=form[3] or 0

        if n2>n1 then
            return false
        end

        if n3>n1 then
            return false
        end
    end

    hu_info.is_dai_yao_jiu = true
    return true
end
--检查短幺九
function mj_logic.check_duan_yao_jiu(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    hu_info.is_duan_yao_jiu = false

    if (#peng_cards)>0 then
        return false
    end
    if (#gang_cards)>0 then
        return false
    end

    local color,point
    --不能有其他花色，点数1,9
    for card,_ in pairs(hand_info.card_nums) do
        color = mj_logic.card_color(card)
        point = mj_logic.card_point(card)
        if point==1 or point==9 then
            return false
        end
    end

    hu_info.is_duan_yao_jiu = true
    return true
end

--测试将对，必须在对对胡之后测试
function mj_logic.check_jiang_dui(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    hu_info.is_jiang_dui = false
    if not hu_info.is_dui_dui_hu then
        return false
    end

    local color,point
    --不能有其他花色，点数
    for card,_ in pairs(hand_info.card_nums) do
        color = mj_logic.card_color(card)
        point = mj_logic.card_point(card)
        if color~= mj_color.wan and color~= mj_color.tiao and color~= mj_color.tong then
            return false
        end
        if point~=2 and point~=5 and point~=8 then
            return false
        end
    end
    for _,v in ipairs( peng_cards) do 
        point = mj_logic.card_point(v)
        if point~=2 and point~=5 and point~=8 then
            return false
        end
    end
    for _,v in  ipairs(gang_cards )do 
        point = mj_logic.card_point(v)
        if point~=2 and point~=5 and point~=8 then
            return false
        end
    end    

    hu_info.is_jiang_dui = true
    return true
end

--测试将七对，必须在对对胡之后测试
function mj_logic.check_jiang_qi_dui(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    hu_info.is_jiang_qi_dui = false
    if not hu_info.is_qi_dui then
        return false
    end

    local color,point
    --不能有其他花色，点数
    for card,_ in pairs(hand_info.card_nums) do
        color = mj_logic.card_color(card)
        point = mj_logic.card_point(card)
        if color~= mj_color.wan and color~= mj_color.tiao and color~= mj_color.tong then
            return false
        end
        if point~=2 and point~=5 and point~=8 then
            return false
        end
    end

    hu_info.is_jiang_qi_dui = true
    return true
end

--中张，没有1和9
function mj_logic.check_zhong_zhang(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    hu_info.is_zhong_zhang = false

    local t = {hand_cards,peng_cards,gang_cards}
    local point
    --不能有其他点数
    for _,cards in pairs(t) do
        for _,card in pairs(cards) do
            point = mj_logic.card_point(card)
            if point==1 or point==9 then
                return false
            end
        end
    end

    hu_info.is_zhong_zhang = true
    return true
end


function mj_logic.check_can_gang(hand_cards,peng_cards, draw_card)
    for _,card in pairs (peng_cards) do 
        if card == draw_card then 
            return true
        end
    end

    local tmp_card_num = 0
    for _,card in pairs(hand_cards) do 
        if card == draw_card then 
            tmp_card_num = tmp_card_num+1
        end
    end

    if tmp_card_num == 4 then 
        return true
    else 
        return false
    end    
end


-- whether can hu the card (the card is not  in hand )
function  mj_logic.can_hu_the_card(peng_cards,gang_cards,hand_cards, the_card )
        --new card to add the card in
        local tmp_hand_cards = {}
       for _,v in ipairs(hand_cards) do
            table.insert(tmp_hand_cards,v)
        end
        table.insert(tmp_hand_cards,the_card)
        local hu_info = mj_logic.get_hu_info(peng_cards,gang_cards,tmp_hand_cards)
        if hu_info.is_hu then
             return true ,hu_info
        else
             return false
        end

end


function  mj_logic.can_hu_cards(peng_cards,gang_cards,hand_cards, cards )
                for i,v in ipairs(cards) do 
                    local bok , tmp_info = mj_logic.can_hu_the_card(peng_cards,gang_cards,hand_cards, v ) 
                    if not bok then 
                           return false
                    end        
                end  
             return true     
end

function mj_logic.can_peng(hand_cards,table_card)
    local tmp_card_num = 0
    for _,card in pairs(hand_cards) do 
        if card == draw_card then 
            tmp_card_num = tmp_card_num+1
        end
    end

    if tmp_card_num > 1 then 
        return true
    else 
        return false
    end 
end

function  mj_logic.can_gang_table_card(hand_cards,table_card)
    local tmp_card_num = 0
    for _,card in pairs(hand_cards) do 
        if card == draw_card then 
            tmp_card_num = tmp_card_num+1
        end
    end

    if tmp_card_num == 3 then 
        return true
    else 
        return false
    end
end

function mj_logic.can_gang_after_draw_ignor_draw_card(hand_cards,peng_cards,que_color)
    local tmp_can_gang_card = {}
    --local tmp_can_wan_gang_card = {}

    if peng_cards then
        for _,peng_card in ipairs(peng_cards) do 
            for i,v in ipairs(hand_cards) do
                if v == peng_card then 
                    table.insert(tmp_can_gang_card,{type = 2,card = v})
                    
                end    
            end
        end 
    end    

       local hand_info = mj_logic.analyse_cards(hand_cards)

       for _,v in ipairs (hand_info.four_cards)  do 
            if que_color==nil or   mj_logic.card_color(v) ~= que_color  then
                    table.insert(tmp_can_gang_card,{type = 3,card = v})
            end
       end     

       if #tmp_can_gang_card >0 then 
            return true ,tmp_can_gang_card
       else 
            return false
       end



end

--计算七对的番
function mj_logic.get_fan_qi_dui(hu_info,fans)
    local fan_name = ""
    local fan_num = 0
    if hu_info.is_qing_yi_se then
       fan_name = fan_name.."清"
       fan_num = fan_num+2
    end

    --将七对
    if hu_info.is_jiang_qi_dui then
        fan_name=fan_name.."将"
        fan_num=fan_num+1
    end

    --龙七对
    if hu_info.gen==1 then
        fan_name=fan_name.."龙"
        fan_num=fan_num+1
    end
    if hu_info.gen==2 then
        fan_name=fan_name.."双龙"
        fan_num=fan_num+2
    end
    if hu_info.gen==3 then
        fan_name=fan_name.."三龙"
        fan_num=fan_num+3
    end

    fan_name=fan_name.."七对"
    fan_num=fan_num+2

    table.insert(fans, {fan_name=fan_name,fan_num=fan_num})
end

--计算对对胡的番
function mj_logic.get_fan_dui_dui_hu(hu_info,fans)
    local fan_name = ""
    local fan_num = 0
    local tail = "对对胡"

    if hu_info.is_qing_yi_se then
       fan_name = fan_name.."清"
       fan_num = fan_num+2
       tail = "对"
    end

    --将对
    if hu_info.is_jiang_dui then
        fan_name=fan_name.."将"
        fan_num=fan_num+1
        tail = "对"
    end

    --对对胡
    fan_name=fan_name..tail
    if info.da_dui_zi_2_fan then
        fan_num=fan_num+2
    else
        fan_num=fan_num+1
    end
    table.insert(fans, {fan_name=fan_name,fan_num=fan_num})
end


--计算普通胡牌的番
function mj_logic.get_fan_normal(hu_info,fans)
    --清一色
    if hu_info.is_qing_yi_se then
       table.insert(fans,{fan_name="清一色",fan_num=2})
    end

    --根
    if hu_info.gen>0 then
        table.insert( fans,{
            fan_name=string.format("带%d根",hu_info.gen),
            fan_num=hu_info.gen,
        })
    end
end
-- calc fans and fan_num . rules = {enable_yjjd = ?,enable_mqzz = ?}
function mj_logic.calc_hu_info(rules,hand_cards,peng_cards,gang_cards)
    local fans = {}
    local hu_info = mj_logic.get_hu_info(peng_cards,gang_cards,hand_cards)


    if not hu_info.is_hu then
        
        return
    end

    local hand_info = mj_logic.analyse_cards(hand_cards)



    --清一色
    mj_logic.check_qing_yi_se(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    --根
    mj_logic.check_gen(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    --对对胡
    mj_logic.check_dui_dui_hu(hu_info,hand_info,hand_cards,peng_cards,gang_cards)

    --允许幺九将对
    if rules.enable_yjjd then
        --带幺九
        if mj_logic.check_dai_yao_jiu(hu_info,hand_info,hand_cards,peng_cards,gang_cards) then
            table.insert(fans, {fan_name="带幺九",fan_num=2})
        end
        --断幺九
        if mj_logic.check_duan_yao_jiu(hu_info,hand_info,hand_cards,peng_cards,gang_cards) then
            table.insert(fans, {fan_name="断幺九",fan_num=1})
        end
        --将对
        mj_logic.check_jiang_dui(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
        --将七对
        mj_logic.check_jiang_qi_dui(hu_info,hand_info,hand_cards,peng_cards,gang_cards)
    end

    --允许门清中张
    if rules.enable_mqzz then
        --中张
        if mj_logic.check_zhong_zhang(hu_info,hand_info,hand_cards,peng_cards,gang_cards) then
            table.insert(fans, {fan_name="中张",fan_num=1})
        end
        --门清
        local is_men_qing = false
        if #peng_cards + #gang_cards == 0 then 
                is_men_qing= true
        end
        if is_men_qing then
            hu_info.is_men_qing = true
            table.insert(fans, {fan_name="门清",fan_num=1})
        end
    end

    --开始计算番
    --是七对
    if hu_info.is_qi_dui then
        mj_logic.get_fan_qi_dui(hu_info,fans)
    else
        if hu_info.is_dui_dui_hu then
            mj_logic.get_fan_dui_dui_hu(hu_info,fans)
        else
            mj_logic.get_fan_normal(hu_info,fans)
        end
    end

    --计算总番数
    local total_fan_num=0
    for _,fan in pairs(fans) do
        total_fan_num=total_fan_num+fan.fan_num
    end
    return fans,total_fan_num,hu_info.is_hu
end



return mj_logic



