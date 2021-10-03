package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1897:int;
      
      private var var_1202:int;
      
      private var var_1786:int;
      
      private var var_1864:int = -1;
      
      private var var_163:int;
      
      private var var_1685:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1201:int;
      
      private var var_1686:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1686 = param2;
         var_1685 = param3;
         var_1202 = param4;
         var_163 = param5;
         var_1786 = param6;
         var_1201 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1897 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1897;
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
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1864 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1202 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1201 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_163;
      }
      
      public function get averagePrice() : int
      {
         return var_1786;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1686;
      }
   }
}
