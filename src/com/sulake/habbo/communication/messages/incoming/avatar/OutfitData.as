package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2057:String;
      
      private var var_638:String;
      
      private var var_1612:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1612 = param1.readInteger();
         var_2057 = param1.readString();
         var_638 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_638;
      }
      
      public function get figureString() : String
      {
         return var_2057;
      }
      
      public function get slotId() : int
      {
         return var_1612;
      }
   }
}
