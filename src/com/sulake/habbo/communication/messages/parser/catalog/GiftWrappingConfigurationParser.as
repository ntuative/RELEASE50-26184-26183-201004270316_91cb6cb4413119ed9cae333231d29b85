package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_1602:Array;
      
      private var var_2245:Boolean;
      
      private var var_634:Array;
      
      private var var_2244:int;
      
      private var var_633:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         var_1602 = [];
         var_633 = [];
         var_634 = [];
         var_2245 = param1.readBoolean();
         var_2244 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_1602.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_633.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_634.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_634;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1602;
      }
      
      public function get wrappingPrice() : int
      {
         return var_2244;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boxTypes() : Array
      {
         return var_633;
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return var_2245;
      }
   }
}
