package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1834:int;
      
      private var var_1833:String;
      
      private var var_1091:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1091 = param1.readInteger();
         this.var_1833 = param1.readString();
         this.var_1834 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1091;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1834;
      }
      
      public function get requesterName() : String
      {
         return this.var_1833;
      }
   }
}
