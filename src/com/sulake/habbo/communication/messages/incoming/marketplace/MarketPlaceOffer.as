package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1202:int;
      
      private var var_1864:int = -1;
      
      private var var_163:int;
      
      private var var_1786:int;
      
      private var var_1685:int;
      
      private var _offerId:int;
      
      private var var_1201:int;
      
      private var var_1686:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1686 = param2;
         var_1685 = param3;
         var_1202 = param4;
         var_163 = param5;
         var_1864 = param6;
         var_1786 = param7;
         var_1201 = param8;
      }
      
      public function get status() : int
      {
         return var_163;
      }
      
      public function get price() : int
      {
         return var_1202;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1864;
      }
      
      public function get offerCount() : int
      {
         return var_1201;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1685;
      }
      
      public function get averagePrice() : int
      {
         return var_1786;
      }
      
      public function get furniId() : int
      {
         return var_1686;
      }
   }
}
