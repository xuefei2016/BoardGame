﻿
using System;
using System.Collections.Generic;
namespace SLua
{
    public partial class LuaDelegation : LuaObject
    {

        static internal System.Int64 Lua_DG_Tweening_Core_DOGetter_1_System_Int64(LuaFunction ld ) {
            IntPtr l = ld.L;
            int error = pushTry(l);

			ld.pcall(0, error);
			System.Int64 ret;
			checkType(l,error+1,out ret);
			LuaDLL.lua_settop(l, error-1);
			return ret;
		}
	}
}
