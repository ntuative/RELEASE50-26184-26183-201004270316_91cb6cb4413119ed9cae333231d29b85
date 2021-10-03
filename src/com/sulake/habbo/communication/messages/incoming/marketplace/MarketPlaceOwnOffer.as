package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1503:int = 2;
      
      public static const const_1523:int = 1;
      
      public static const const_1557:int = 0;
       
      
      private var var_1202:int;
      
      private var var_163:int;
      
      private var var_2385:int;
      
      private var _offerId:int;
      
      private var var_1685:int;
      
      private var var_1686:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1686 = param2;
         var_1685 = param3;
         var_1202 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1686;
      }
      
      public function get furniType() : int
      {
         return var_1685;
      }
      
      public function get price() : int
      {
         return var_1202;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
