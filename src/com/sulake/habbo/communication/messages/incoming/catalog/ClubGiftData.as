package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2177:int;
      
      private var var_2176:Boolean;
      
      private var _offerId:int;
      
      private var var_1640:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2176 = param1.readBoolean();
         var_2177 = param1.readInteger();
         var_1640 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1640;
      }
      
      public function get monthsRequired() : int
      {
         return var_2177;
      }
      
      public function get isVip() : Boolean
      {
         return var_2176;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
