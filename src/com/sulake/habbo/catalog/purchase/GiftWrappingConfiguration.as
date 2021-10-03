package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_634:Array;
      
      private var var_1202:int;
      
      private var var_1602:Array;
      
      private var var_633:Array;
      
      private var var_1383:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1383 = _loc2_.isWrappingEnabled;
         var_1202 = _loc2_.wrappingPrice;
         var_1602 = _loc2_.stuffTypes;
         var_633 = _loc2_.boxTypes;
         var_634 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_634;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1602;
      }
      
      public function get price() : int
      {
         return var_1202;
      }
      
      public function get boxTypes() : Array
      {
         return var_633;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1383;
      }
   }
}
