package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1468:String;
      
      private var var_1789:int;
      
      private var var_1791:int;
      
      private var var_1790:int;
      
      private var var_1788:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1789 = param1.readInteger();
         var_1790 = param1.readInteger();
         var_1791 = param1.readInteger();
         var_1788 = param1.readString();
         var_1468 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1468;
      }
      
      public function get hour() : int
      {
         return var_1789;
      }
      
      public function get minute() : int
      {
         return var_1790;
      }
      
      public function get chatterName() : String
      {
         return var_1788;
      }
      
      public function get chatterId() : int
      {
         return var_1791;
      }
   }
}
