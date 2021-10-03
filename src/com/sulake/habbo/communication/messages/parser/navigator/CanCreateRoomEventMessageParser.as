package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomEventMessageParser implements IMessageParser
   {
       
      
      private var var_1212:int;
      
      private var var_2335:Boolean;
      
      public function CanCreateRoomEventMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2335 = param1.readBoolean();
         this.var_1212 = param1.readInteger();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1212;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get canCreateEvent() : Boolean
      {
         return var_2335;
      }
   }
}
