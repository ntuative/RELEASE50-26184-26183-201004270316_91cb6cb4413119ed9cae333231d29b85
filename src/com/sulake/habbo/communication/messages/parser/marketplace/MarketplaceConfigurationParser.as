package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1935:int;
      
      private var var_1527:int;
      
      private var var_1937:int;
      
      private var var_1936:int;
      
      private var var_1938:int;
      
      private var var_1526:int;
      
      private var var_1799:int;
      
      private var var_1383:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1935;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1527;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1799;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1936;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1938;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1526;
      }
      
      public function get commission() : int
      {
         return var_1937;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1383 = param1.readBoolean();
         var_1937 = param1.readInteger();
         var_1527 = param1.readInteger();
         var_1526 = param1.readInteger();
         var_1936 = param1.readInteger();
         var_1935 = param1.readInteger();
         var_1938 = param1.readInteger();
         var_1799 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1383;
      }
   }
}
