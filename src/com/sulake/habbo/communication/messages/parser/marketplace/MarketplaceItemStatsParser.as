package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1456:Array;
      
      private var var_1786:int;
      
      private var var_1783:int;
      
      private var var_1787:int;
      
      private var var_1785:int;
      
      private var _dayOffsets:Array;
      
      private var var_1784:int;
      
      private var var_1455:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_1783;
      }
      
      public function get historyLength() : int
      {
         return var_1785;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1787;
      }
      
      public function get offerCount() : int
      {
         return var_1784;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1455;
      }
      
      public function get averagePrice() : int
      {
         return var_1786;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1786 = param1.readInteger();
         var_1784 = param1.readInteger();
         var_1785 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1456 = [];
         var_1455 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1456.push(param1.readInteger());
            var_1455.push(param1.readInteger());
            _loc3_++;
         }
         var_1787 = param1.readInteger();
         var_1783 = param1.readInteger();
         return true;
      }
   }
}
