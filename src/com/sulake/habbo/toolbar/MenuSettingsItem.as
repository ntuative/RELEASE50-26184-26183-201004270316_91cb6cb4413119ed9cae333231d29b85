package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1998:Array;
      
      private var var_1999:String;
      
      private var var_1997:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1999 = param1;
         var_1998 = param2;
         var_1997 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1999;
      }
      
      public function get yieldList() : Array
      {
         return var_1998;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1997;
      }
   }
}
