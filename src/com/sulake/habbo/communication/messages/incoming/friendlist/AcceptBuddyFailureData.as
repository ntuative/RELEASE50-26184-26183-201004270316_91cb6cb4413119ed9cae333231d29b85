package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_1212:int;
      
      private var var_681:String;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_681 = param1.readString();
         this.var_1212 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_681;
      }
      
      public function get errorCode() : int
      {
         return this.var_1212;
      }
   }
}
