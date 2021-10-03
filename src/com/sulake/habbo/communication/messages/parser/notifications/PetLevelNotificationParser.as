package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_312:String;
      
      private var var_1687:int;
      
      private var var_2050:String;
      
      private var var_1059:int;
      
      private var var_1311:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1311;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1311 = param1.readInteger();
         var_2050 = param1.readString();
         var_1687 = param1.readInteger();
         var_312 = param1.readString();
         var_1059 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2050;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function get petType() : int
      {
         return var_1059;
      }
      
      public function get level() : int
      {
         return var_1687;
      }
   }
}
