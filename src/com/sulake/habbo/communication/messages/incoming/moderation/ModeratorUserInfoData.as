package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2032:int;
      
      private var var_2034:int;
      
      private var var_2029:int;
      
      private var _userName:String;
      
      private var var_2031:int;
      
      private var var_2033:int;
      
      private var var_2030:int;
      
      private var _userId:int;
      
      private var var_683:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2033 = param1.readInteger();
         var_2031 = param1.readInteger();
         var_683 = param1.readBoolean();
         var_2029 = param1.readInteger();
         var_2034 = param1.readInteger();
         var_2032 = param1.readInteger();
         var_2030 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2030;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_683;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2031;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2034;
      }
      
      public function get cautionCount() : int
      {
         return var_2032;
      }
      
      public function get cfhCount() : int
      {
         return var_2029;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2033;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
