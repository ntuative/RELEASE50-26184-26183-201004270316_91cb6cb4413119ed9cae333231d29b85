package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MessengerErrorMessageParser implements IMessageParser
   {
       
      
      private var var_1212:int;
      
      private var var_2357:int;
      
      public function MessengerErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2357 = param1.readInteger();
         this.var_1212 = param1.readInteger();
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1212;
      }
      
      public function get clientMessageId() : int
      {
         return this.var_2357;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
