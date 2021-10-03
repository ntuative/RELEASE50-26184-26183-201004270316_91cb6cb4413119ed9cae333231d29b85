package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1966:int;
      
      private var var_1104:int;
      
      private var var_2014:int;
      
      private var var_1525:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1525 = param1.readInteger();
         var_2014 = param1.readInteger();
         var_1104 = param1.readInteger();
         var_1966 = param1.readInteger();
         var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1525);
      }
      
      public function get chatRecordId() : int
      {
         return var_1966;
      }
      
      public function get reportedUserId() : int
      {
         return var_1104;
      }
      
      public function get callerUserId() : int
      {
         return var_2014;
      }
      
      public function get callId() : int
      {
         return var_1525;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_111;
      }
   }
}
