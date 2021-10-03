package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1575:int;
      
      private var var_1996:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1996 = param1.readString();
         var_1575 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1575;
      }
      
      public function get productItemType() : String
      {
         return var_1996;
      }
   }
}
