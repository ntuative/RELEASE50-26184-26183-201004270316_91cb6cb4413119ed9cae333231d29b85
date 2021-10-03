package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1456:Array;
      
      private var var_1786:int;
      
      private var var_1783:int;
      
      private var var_1785:int;
      
      private var var_1787:int;
      
      private var _dayOffsets:Array;
      
      private var var_1784:int;
      
      private var var_1455:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1456;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1456 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1783;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1455 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1786 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1785;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1787;
      }
      
      public function get offerCount() : int
      {
         return var_1784;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1784 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1455;
      }
      
      public function get averagePrice() : int
      {
         return var_1786;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1787 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1785 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1783 = param1;
      }
   }
}
