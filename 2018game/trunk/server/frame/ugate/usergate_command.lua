LuaS �

xV           (w@@usergate_command.lua         A    @ A@  $� F @ ��  d� � @ ��  �@ � @ �  �� � @ A � @ A� $� F@ �� d� �B �AB�B ǁ�B �BFB G��B �BC�B ǂ�B �CFB G��B �CD�@ � � B �Dl  JC�lD  JC��l�  JC�l�  JC��l JC�lD JC��l� JC�l� JC��l JC�lD JC��& �    requireskynetskynet.clusterskynet.managerskynet.socketdriverosskynet.netpack	sprint_r_Guser_stateconfservice_nameinfoconnection
user_listsendercommandlogiccc_logspx
send_packsend_user_packuser_enter__user_reenteruser_updateadd_watcherremove_watcherclose_connectioncheck_dead_connectionstart    
       -    4   � @ �@     �@�� � �@   �� @ ��     �@�& � ��@� �   FAA�� d ��  �@  @��A@� $� F�A � � B @�dA��B��F�A �� �� � � ��dA G� b   ��AC���� �A A� � ��  �$B�& �    debugusergate.send_pack(),fdfd not foundpcallsendpacktypeerrorcommand.send_pack(),type(np)
table	np info
serviceunpdecode_addressnode_idservice_id   
      4                                                                   !   !   "   "   "   #   #   #   #   #   #   $   $   %   %   %   %   %   %   %   &   '   '   (   (   (   )   )   )   )   )   )   -      fd    4   np    4   ok   4   r   4   tnp   3   service(   3   node_id-   3   service_id-   3      logconnection_ENVsocketdrivernetpack	sprint_rspx /   <       � @ �@     �@�� � �@   �ƀ@ �  @  � �@ �@A�@   �@ A� �  $A�& � �AG��� $A�& � 	   debugusergate.send_user_packinfo!command.send_user_pack(),user_idisn't foundc,command.send_user_pack(),user_id is offline
send_packfd          0   0   0   0   1   2   2   3   3   3   3   3   5   6   6   7   7   7   7   8   ;   ;   ;   ;   <      user_id       np       user      c         log
user_listcommand >   �    �   F @ b   @�F@@ ��  d@ F@@ ��  � �    � �� d@ G A b@  @��@A �� �@ �   �� � ���A �@  @��@A �  �@ �   �  � ��@ �@   ��@��BA� � �A  � � �@  ���AA ��   �A��  �� ��� ���A  ��BA A ��$B�  @�&�B�"  @�BA A� $B   A� &� �K JB ��EJ���BEJ�����EJ����EJ�����A J����  J����FJ���� ���� F��M�HA��FBG �� �� � F��dB� ��@F�F_ ����@A � GAF�@��    � ���A �����@H�����@���@ ���F�F�@���@   �FAA �� ��   dA FAG � �� 	 dA � � ��� �& � %   	is_debugdebugcommand.user_enter()
user_iderroruser_id is nil
auth_codeauth_code is nilpcallcalldbuserdbget_user_by_idcommand.user_enter(),.网关读取玩家数据失败，代码601002command.user_enter() exceptis_expired%command.user_enter(),gate is expired网关服务器即将关闭
user_name
room_cardmoney	head_img	watchersstateidle	user_num       info*command.user_enter(),add new user,user_id command.user_enter(),user.state+玩家账号正在登出，请稍后重试login__user_reentercommand.user_enter(),user_id already exist replace prev user     	    �   ?   ?   ?   @   @   @   A   A   A   A   A   A   A   D   E   E   F   F   F   G   G   G   I   I   I   J   J   J   K   K   K   N   O   O   Q   Q   Q   Q   Q   Q   Q   R   R   S   S   S   S   T   T   T   V   V   W   W   X   X   X   X   Y   Y   Y   \   \   \   ]   ]   ]   ^   ^   ^   a   b   c   d   d   e   e   f   f   g   g   h   h   i   i   j   j   k   l   m   m   m   o   o   o   o   o   o   o   q   q   q   q   r   r   r   r   s   s   s   v   v   w   w   x   x   x   x   y   y   {   {   |   |   |   |   |                  �   �   �   �      
user_info    �   user_id   �   user    �   callok)   b   p1)   b   p2)   b   ok4   b   r4   b   db_userG   b   okv   �   rv   �      log	sprint_r
user_list_ENVclusterinfouser_statecommand �   �       G @ b    ��@@ �   �  �@���� �   �@ � A�@ �@ ��� � � �@ & �    csend_user_kick"你的账号在其他设备登录user_offlinesleep       close_connection           �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      user       c         senderlogicskynet �   �    "   G @ �@@ ��   � �@��@� �@  @���@   @� � �@ & � �@A   �  �_ @���A "  ��B@ A� �� �  @�$B ���  j�& � 	   user_iddebugcommand.user_update(),user_iderroris'nt foundpairs	is_debugupdate user_idto         "   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      
user_info    "   user_id   "   user   "   (for generator)   !   (for state)   !   (for control)   !   k      v         log
user_list_ENV �   �    0   G @ �@@ �   ����@ ��   � �@���@ �  � @  $� � ��@ b@   ��@A �� �@ �   �  ��A �@   ��@A �  �@ �   �  � @ �� �@  ���@A   G@ �A �@ �   �  ƀ�  @  �@�� � �  & �    user_id	is_debugdebugcommand.add_watcher()
errorwatcher_info.user_id is nilwatcher_service$watcher_info.watcher_service is nil
not foundadd_watcher       0   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      watcher_info    0   user_id   0   user    0      log	sprint_r
user_listlogic �   �       � @ �@     A�  �� �@�� � �@  @���@  @  �A �@ & � ƀA  @� �@�& �    debug!command.remove_watcher(),user_idwatcher_serviceerroruser_idisn't foundremove_watcher          �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      user_id       watcher_service       user         log
user_listlogic �   �       F @ �@  �   d@�F � b@  @���@ ��     A �@ & � �@A� � �@ & �    debugclose_connection,fderrorfdisn't foundclose_connection   
       �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      fd       c         logconnectionlogic �   �     "    @ A@  $@ �� $�� F�@� �d ����   ���AA �� ��A� ���    AC �A ��B���A i�  ��F��b@  � �F C�@�ƀCd@�& �    debugcheck_dead_connection()timepairs
dead_timeinfofd	deadtimenowis dead,close itclose_connectionis_expiredtimeoutcheck_dead_timecheck_dead_connection	     
	     "   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      now   "   (for generator)      (for state)      (for control)      _	      c	      	   logos_ENVconnectionlogicinfoskynetconfcommand �       �    @ F@� G�� $@ �@ A  $@ @� F�A�� $@�@� F B�@ $@���E  $@ �@ A� $@ �@ A  � ��@C�� ]�� $@ ��F��d�� �  �@  
�D�FACG�
A�FACGA�
A��FACG��
A�$@��@ A� $@ @�A  $� � ���F F�  �� $� � ���F F�  �@ $� � ���F�F���� � $�  � ��@ A� ��G$@��CA@ �@ �� � $��� ��@ A  � H$@��@ A 	 $@ � F G
@��F�F
@ �F � G@� ��
 �@Cǀ�ACEd� 
@��F�G
@��F@CG@� 
@ �F@K
@��F�@ �� � �   � �� d@ F�C�� �  A @  d@�F�@ �� d@ F��� B���d@�& � 4   set_service_name_Gservice_nameinfougate command.start()assertuser_dead_timeinvalid conf.user_dead_timecheck_dead_timeinvalid conf.check_dead_time	registerconf.gate_info

gate_infocallselfluaopenaddress0::port
maxclientnodelaydoneclusternodequeryserviceself_node_idget_self_node_idself_node_nameget_self_node_nameself_gate_serviceencode_addressagent_servicecenterget_serviceagentregister gate
node_namenode_idgate_addressstringformat%s:%dgate_service	max_user	user_numregister_gate(),reg_info
login
userloginregister_gatetimeoutcheck_dead_connection
      	    �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                        �                 	  	  	  	  	  	  
  
  
  
  
  
                                                                                                                                         	reg_infom   �   
   log_ENVconfskynetservice_name	sprint_rinfospxclustercommandA                                                                  
   
                                                                  -      <   /   �   >   �   �   �   �   �   �   �   �   �   �   �   �     �        skynet   A   cluster   A   socketdriver   A   os   A   netpack   A   	sprint_r   A   user_state   A   conf   A   service_name   A   info   A   connection   A   
user_list!   A   sender#   A   command%   A   logic'   A   log*   A   spx,   A      _ENV