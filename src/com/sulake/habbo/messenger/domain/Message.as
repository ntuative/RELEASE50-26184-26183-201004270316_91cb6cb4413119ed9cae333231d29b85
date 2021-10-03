package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_667:int = 2;
      
      public static const const_806:int = 6;
      
      public static const const_534:int = 1;
      
      public static const const_535:int = 3;
      
      public static const const_985:int = 4;
      
      public static const const_555:int = 5;
       
      
      private var var_1882:String;
      
      private var var_1007:int;
      
      private var var_1881:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1007 = param2;
         var_1881 = param3;
         var_1882 = param4;
      }
      
      public function get time() : String
      {
         return var_1882;
      }
      
      public function get senderId() : int
      {
         return var_1007;
      }
      
      public function get messageText() : String
      {
         return var_1881;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
