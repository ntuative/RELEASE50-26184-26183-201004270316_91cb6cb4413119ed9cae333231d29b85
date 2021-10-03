package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_911:Array;
      
      private var var_855:int;
      
      private var var_1258:String;
      
      private var _offerId:int;
      
      private var var_854:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1258 = param1.readString();
         var_855 = param1.readInteger();
         var_854 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_911 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_911.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_911;
      }
      
      public function get priceInCredits() : int
      {
         return var_855;
      }
      
      public function get localizationId() : String
      {
         return var_1258;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_854;
      }
   }
}
