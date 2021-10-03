package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1722:int;
      
      private var var_2235:Boolean = false;
      
      private var var_1724:int;
      
      private var var_1718:int;
      
      private var var_1721:int;
      
      private var var_1315:String;
      
      private var var_1202:int;
      
      private var _offerId:int;
      
      private var var_1720:int;
      
      private var var_1719:Boolean;
      
      private var var_1723:Boolean;
      
      private var var_419:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1315 = param2;
         var_1202 = param3;
         var_1723 = param4;
         var_1719 = param5;
         var_1724 = param6;
         var_1721 = param7;
         var_1718 = param8;
         var_1722 = param9;
         var_1720 = param10;
      }
      
      public function get month() : int
      {
         return var_1722;
      }
      
      public function get page() : ICatalogPage
      {
         return var_419;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1719;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_419 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_286;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1723;
      }
      
      public function get localizationId() : String
      {
         return var_1315;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1721;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_2235;
      }
      
      public function get day() : int
      {
         return var_1720;
      }
      
      public function get year() : int
      {
         return var_1718;
      }
      
      public function get price() : int
      {
         return var_1202;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_2235 = param1;
      }
      
      public function get periods() : int
      {
         return var_1724;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1202;
      }
      
      public function get productCode() : String
      {
         return var_1315;
      }
   }
}
