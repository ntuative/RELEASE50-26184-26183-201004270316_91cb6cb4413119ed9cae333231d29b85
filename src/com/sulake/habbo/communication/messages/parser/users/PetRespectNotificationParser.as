package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_2150:int;
      
      private var var_1180:PetData;
      
      private var var_2151:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_2150;
      }
      
      public function get petData() : PetData
      {
         return var_1180;
      }
      
      public function flush() : Boolean
      {
         var_1180 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2151;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2150 = param1.readInteger();
         var_2151 = param1.readInteger();
         var_1180 = new PetData(param1);
         return true;
      }
   }
}
