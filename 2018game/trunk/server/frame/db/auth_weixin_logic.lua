LuaS �

xV           (w@@auth_weixin_logic.lua         W    @ A@  $� F @ ��  d@ F @ ��  d� � @ �  �� � @ A � @ A� $� F@ �� d� �@ � �� �@ B � @ A� $� F@ �� d� �@ � �� �@ C � �C �CF�C G���C �CDƃC ǃ���F�C G���C �DE	�  ����D  �Ä��  �����  �Ä�� ����D �Ä�� ����� �Ä�� ����D �Ä�� ����� �Ä�� ����D �Ä�� ����� �Ä�� ���& � '   requireskynetskynet.managerstringmd5cc_xmlcpcallskynet.cluster
field_aux	sprint_rcjson	cc_httpscc_log	cc_redis_Gorder_listconfinfologicweixinlogin_type	pay_typeread_user_redisget_urlpost_url_xmlauth_code_wxverify_token_wxrefresh_token_wxread_user_info_wxread_user_info_dbcreate_user_db
make_signmake_random_strunified_orderquery_order_wxquery_ordercancel_orderregister_http_notifywrite_order           *    &   E   L � �@     d� b   ���   @��   ̀�@ ����  @ �b   @��   ����@�    �� � �   ���@� � E � d� A�@ � �   � ��   �  & �    hgetauth_wei_xinhgetalluser_id	is_debugdebug:auth_user_name.user_login(),read user info from redis ok
   
    &                                                                !   !   !   "   "   "   #   #   #   #   #   #   #   %   %   %   )   )   *      openid    &   ok   &   r   &      redislog	sprint_r ,   ;    $   F @ �@  �   d@�F�� ��@�   d��b@  @�� A A @  �@��   �  ƀ��A@ ����  @ �b@  ��� A  @  �A � �@��   �  � �   � �& � 
   infologic.get_url(),urlget_url
webclienterrorlogic.get_url(),pcalldecodedbweixin.auth_code_wx(),
   
	      $   -   -   -   -   /   /   /   /   0   0   1   1   1   1   2   2   4   4   4   4   4   4   5   5   6   6   6   6   6   6   7   7   :   :   :   ;      url    $   ok   $   r   $      log	cc_httpsinfo_ENVcjson >   N    	)   � @ �@     �@���� ��@   @� �� �@  @�A AA �  $A�  & ��F�A��$��� ��  �@  ��A A �  �A  �$A�  & ��@�$� �  � @�&�& �    infologic.get_url(),urlget_url
webclienterrorlogic.get_url(),pcalldecodedbweixin.auth_code_wx(),
	from_xml   
	      )   ?   ?   ?   ?   A   A   A   A   A   B   B   C   C   C   C   D   D   F   F   F   F   F   F   G   G   H   H   H   H   H   H   I   I   K   K   K   K   M   M   M   N      url    )   post    )   ok	   )   r	   )      log	cc_httpsinfo_ENVcjsoncc_xml Q   y    J   G @ �@@ ƀ� �� F� �� ����@A  �� �@  ��F���� � dA�C  � f�GABb   ������  �A� ��B�A��  � ���AC�A  @�Ɓ�� �A �  � ���D�A  @���AB $B   A� &��D"B  @�F��� dB C  �B f�
��
���
 ��F���� �� � @ �C �  @�dB�C� f & �    codeformatauth_code_urlappidsecretget_urlerrordbweixin.auth_code_wx(),3访问微信code登录服务失败，代码 203015errcode/dbweixin.auth_code_wx(),refresh token errcode errmsg'登录微信code失败，代码 203016access_token:dbweixin.auth_code_wx(),refresh token access_token is nil=微信登录失败，返回access_token为空，代码203017refresh_token;dbweixin.auth_code_wx(),refresh token refresh_token is nil@微信登录失败，返回 refresh_token 为空，代码203018openid4dbweixin.auth_code_wx(),refresh token openid is nil7微信认证失败，返回openid为空，代码203019infologic.auth_code_wx(), ok,code   
    J   R   U   U   U   U   U   U   V   V   V   W   W   X   X   X   X   Y   Y   Y   \   ]   ]   ^   ^   ^   ^   ^   ^   _   _   _   b   c   c   d   d   d   e   e   e   g   h   h   i   i   i   j   j   j   l   m   m   n   n   n   o   o   o   r   s   t   v   v   v   v   v   v   v   v   v   v   x   x   y   	   params    J   code   J   url   J   ok
   J   r
   J   errcode   J   access_token    J   refresh_token)   J   openid2   J      stringweixinlogiclog |   �    0   G @ �@@ ƀ@ �� @� � � A@�$� "A  ���A���  ��A��  �� �����A  @��A�B �A �  � ��_�B ��A� @ �B �B��A��  � ����� @� �B  � �A��� � & �    access_tokenopenidformatverify_token_urlget_urlerrordbweixin.auth_code_wx(),/访问微信验证服务失败，代码 203021errcode3logic.verify_token_wx(),verify user errcode is nil#微信认证失败，代码 203022         logic.verify_token_wx(),errcodeerrmsg#微信认证失败，代码 203023info(logic.verify_token_wx() ok,access_token   
    0   }   ~   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      params    0   access_token   0   openid   0   url   0   ok
   0   r
   0   errcode   0      stringweixinlogiclog �   �    <   G @ �@@ ƀ�  � �����@  �� �@  ��F��A � dA�C  �� f�G�Ab   ����  �AB �BB�A��  �� ����B�A  @��� �A �  B ��ǁC�A  @��A� $B   A &�
���
��B�A� �� ��   A� ��$B�� & & �    refresh_tokenformatrefresh_token_urlget_urlerrordbweixin.auth_code_wx(),5访问微信令牌刷新服务失败，代码 203031errcode3dbweixin.refresh_token_wx(),refresh token errcode errmsg)刷新微信令牌失败，代码 203032access_token>dbweixin.refresh_token_wx(),refresh token access_token is nil>微信认证失败，返回access_token为空，代码 203033openid8dbweixin.refresh_token_wx(),refresh token openid is nil8微信认证失败，返回openid为空，代码 203034info+logic.refresh_token_wx(), ok,refresh_token   
    <   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      params    <   refresh_token   <   url   <   ok   <   r   <   errcode   <   access_token   <   openid'   <      stringweixinlogiclog �   �    	;   F @ b   ��F@@ ��  � �    � �� d@ F�@� ��@A �A d� ��A� � �� �@  ��B AA ��$A�  A� &���"   �G�bA    �AA �B �A  ��A��  ��  �����G��bA  @�FB � dA C  �A f�G��
@�G�
@��C� f & �    	is_debugdebuglogic.read_user_info_wx()
formatuser_info_urlaccess_tokenopenidget_urlerrordbweixin.read_user_info_wx(),/读取微信用户信息失败，代码 203041errcodeerrmsglogin fail;从微信服务器读取用户信息失败：代码 203042	nickname.dbweixin.read_user_info_wx(),invaoid nickname@从微信服务器读取用户信息失败：非法的 nickname
user_name	head_imgheadimgurl   
    ;   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      
user_info    ;   url   ;   ok   ;   r   ;   errcode   ;   errmsg"   +      log	sprint_rstringweixinlogic �      H   F @ �@  �   d@�F�� �   d� _�� � �C   �  f �\    @� � �C   �� f �A� � B�@ ]�� � @ ��  � @  �@ ����  A A� �� �  �� �@  ����C  @� �A �@ �   � � ���D�   @���C  E � d� A�@ �   � � ��@E�@  @��C A� $A   A� &�A�� �� @�&�& �    debug!logic.read_user_info_db(),openidtypestring非法的openid       非法的openid长度*select * from user_info where login_type=wei_xin and openid=? limit 1exec sql :callmysqldluaexecuteerrorquery failed,s = ''查询数据库失败
badresultcommand.get_user_info()
       *dbmysql.get_user_info(),user is not found帐号不存在
user_name
nick_name   
       H   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                           openid    H   s   H   rs"   H   user:   H      log_ENVlogin_typeskynet	sprint_r   +   K   G @ �@@ � � �� _�@ ���� �  A@ @� $ �@  �   �@ � �� �  �A����� �� � �@��   �  � ��@B �@@   � _�� ���� � FA@ � d �@  �   � � �� C ACA� �� �  F��
B��
���
B �GE 
B�� �@  ����� �A   �A��  �� ��� ���A  ���� AB ��$B�  @�&�� & �    openidtypestringerror$logic.create_user_db(),type(openid)非法的openid       logic.create_user_db(),#openid非法的openid长度
user_name'logic.create_user_db(),type(user_name)非法的user_namepcallcalluserdbluacreate_userlogin_typewei_xin
nick_name	head_imglogic.create_user_db(),数据服务异常     
     K   	  
  
  
  
  
                                                                                                      !  !  !  !  "  "  "  $  $  %  %  &  &  &  &  '  '  '  *  +     
user_info    K   openid   K   
user_name   K   callok5   K   p15   K   p25   K   ok@   K   r@   K      _ENVlogskynetlogin_type .  A   4   �   � @    �  �B@ �@@ � $B��  j��@@ ���  �@ � � F@ � d@�A   ������B  �A� � ݀� �����   � i�  ���@��� �� ���FB �A ��dA�F�� ��B��� e  f  & �    pairstableinsertsort       &=&key=printsuppersumhexa         4   /  0  0  0  0  1  1  1  1  1  0  0  3  3  3  3  5  6  6  6  6  7  8  8  9  9  9  9  9  9  9  ;  ;  ;  ;  6  6  >  >  >  >  ?  ?  ?  ?  @  @  @  @  @  @  A     t    4   key    4   sorted   4   (for generator)      (for state)      (for control)      k   
   _   
   s   4   v   4   (for generator)   %   (for state)   %   (for control)   %   i   #   k   #      _ENVstringmd5 D  F    	    @ F@@ G�� ��  �  d �%   &   & �    	tostringmathrandom �Ƥ~� ���o�#          	   E  E  E  E  E  E  E  E  F         _ENV I  ~   k   � @ ƀ  �   ��A� A�  � $A��@@ $A � F�
A�FA�
A��
�A�FABd�� 
A�G�B 
A�FC� d� 
A��G�C 
A��G�C 
A��GA� 
A�F��
A�
AE��  �E@���$��� �A�@�$� F�� b   �F�� �� � ��dA FG�A�� d��bA  ���A� � @ �A��  � ���H_@�@��A� � E � d� B�A �  � ����H�����B���� ˁ ���B�����H���ʁɒBB$�� ���BJ�J$�� ���E@���$����� @�&�& � +   user_iderror;auth_weixin_logic.unified_order(),old_order exists,user_idcancel_orderappidmch_iddevice_infoweb
nonce_strmake_random_strbodyattach	tostringout_trade_no	order_id
total_feespbill_create_ip
client_ipnotify_urlpay_notify_urltrade_typeAPPsign
make_signkeyto_xmldebugcall post to wx website
post_url_xmlunified_order_urlweixin.logic.unified_order(),统一下单失败return_codeSUCCESSweixin.logic.unified_order(),

prepay_idwx_nonce_strpackageSign=WXPay	noncestr
timestampostime   
      k   J  K  L  L  M  M  M  M  N  N  N  Q  R  R  S  S  T  U  U  U  V  V  W  W  W  W  X  X  Y  Y  Z  Z  [  [  \  ]  ^  ^  ^  ^  ^  _  _  _  `  `  `  a  a  a  a  a  c  c  c  c  d  d  e  e  e  e  f  f  f  i  i  i  j  j  j  j  j  j  j  k  k  k  n  n  o  o  q  s  t  t  u  u  v  v  w  x  x  x  y  y  y  y  |  |  |  |  |  }  }  }  ~     order_info    k   	pay_info    k   user_id   k   	wx_order   k   s,   k   ok8   k   r8   k   resultb   k      order_listloglogicweixin_ENVcc_xml	sprint_r �  �   
M   G @ b     �& � 
@@�G�@ b@  ����  � A A @ �@�
�A�
� �& � �@ � � �� ��@� �����@ ���B �����@C䀀 �� ���C  � �� �� DA� F������@  ��FA �� � dA�C  � f�GAE_����FA �� ��EdA�C  ��Ef�GF_�� �FA �A ǁF� G�FdA�C  ��Ff�GG_��@�FA �A ǁFB GBGdA�
@@�& �    done
prepay_id订单没有完成统一下单error%weixin.logic.query_order_complete(),ok appidmch_idtransaction_idout_trade_no
nonce_strmake_random_strsign
make_signpost_url_xmlquery_order_urlsweixin.logic.query_order(),查询订单失败return_codeSUCCESSreturn_msgresult_code$weixin.logic.query_order(),err_code	err_codeerr_code_destrade_statetrade_state_descsuccess   
      M   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     order_info    M   
prepay_id   M   desc	      post   M   ok#   M   r#   M      logweixinlogic_ENV �  �   	(   � @ � � _� @��@@ ��  @ A�  �� �@�� A �@  � ��@� �   �@ �  ƀ�� A �A �  �@ ��  � @�� �ǀB �� �� Å�  ��AA � ��   �@ � �   � �& �    user_iderror.weixin.logic.query_order(),order_info.user_idpay_info.user_id	completequery_order_wxcalldbmysqlluawrite_order	order_idokuserdbcomplete_order   
       (   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     order_info    (   	pay_info    (   pay_result   (      loglogiccpcallskynet_ENV �  �   	0   F   b@  @�� � �@     A�  �@ & � �@ � � �   ���  AA� ���A� ��� � ��A�$�� � ���@�$� � ��FAC��C$��"A  � ��� ��  ��A�� �DF�C����@  � �F� �� � dA�& �    error.weixin.logic.cancel_order(),order for user_idis not found 
prepay_idappidmch_idout_trade_no
nonce_strmake_random_strsign
make_signpost_url_xmlunified_order_urlsweixin.logic.cancel_order(),close_order_url   
      0   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     user_id    0   order_info   0   
prepay_id   0   post   %   ok   %   r   %   ok)   0   r)   0      order_listlogweixinlogic_ENV �  �        @ A@  ��� ��  A$@�@�F�A�� �  A K ��� J���AJ���JÅJ�Æ$� "@   ���C �   � �@�� �� @ �@ �@ & �    info)weixin.logic.register_http_notify(),pathpay_notify_pathserviceself_servicepcallcallhttpdhttpd_gateregister_handlerpathentrynotify_pay_orderdescwei xin pay order notifyerror weixin.logic.register_notify(),done   
         �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     ok      r         logweixininfo_ENVcluster �     :   G @ b     �& � G@@ b@   �F�@ ��  � A d@�& � G�@ b@    �A@ �   ǀA �   @ ���   ��  �@�    KA J�B�J�B�J�B�J�ÆJ�����@   �F�@ � � dA�& � AA �� �� ]��� ��B A� �� ���B GA � �� C GDC ��C �A�& �    saved
prepay_iderror4weixin.logic.write_order(),prepay_id is nil,user_iduser_idok               exists	order_idstringbody
total_feenumberspbill_create_ipweixin.logic.write_order(),insert wei_xin_order_info> (order_id,user_id,ok,error,body,total_fee,spbill_create_ip)  values (?,?,?,?,?,?,?)callmysqldluaexecute   
     :   �  �  �  �  �  �  �  �  �  �  �  �                                    	  
                                                               order_info    :   p_error   :   p_ok   :   ok    :   r    :   sql+   :      log
field_auxcpcallskynetW                                                                  	   	   	                                                                                       *      ;   ,   N   >   y   Q   �   |   �   �   �   �     �   +    A  .  F  D  ~  I  �  �  �  �  �  �  �  �    �       skynet   W   string	   W   md5   W   cc_xml   W   cpcall   W   cluster   W   
field_aux   W   	sprint_r   W   cjson   W   	cc_https!   W   log$   W   redis'   W   order_list)   W   conf+   W   info-   W   logic/   W   weixin0   W   login_type2   W   	pay_type4   W      _ENV