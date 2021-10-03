package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1722:int;
      
      private var var_1202:int;
      
      private var var_1724:int;
      
      private var _offerId:int;
      
      private var var_1718:int;
      
      private var var_1720:int;
      
      private var var_1719:Boolean;
      
      private var var_1721:int;
      
      private var var_1723:Boolean;
      
      private var var_1315:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1315 = param1.readString();
         var_1202 = param1.readInteger();
         var_1723 = param1.readBoolean();
         var_1719 = param1.readBoolean();
         var_1724 = param1.readInteger();
         var_1721 = param1.readInteger();
         var_1718 = param1.readInteger();
         var_1722 = param1.readInteger();
         var_1720 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1718;
      }
      
      public function get month() : int
      {
         return var_1722;
      }
      
      public function get price() : int
      {
         return var_1202;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1724;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1721;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1723;
      }
      
      public function get day() : int
      {
         return var_1720;
      }
      
      public function get vip() : Boolean
      {
         return var_1719;
      }
      
      public function get productCode() : String
      {
         return var_1315;
      }
   }
}
