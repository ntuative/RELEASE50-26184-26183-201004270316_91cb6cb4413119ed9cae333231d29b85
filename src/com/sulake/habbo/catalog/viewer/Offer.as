package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_807:String = "price_type_none";
      
      public static const const_376:String = "pricing_model_multi";
      
      public static const const_286:String = "price_type_credits";
      
      public static const const_435:String = "price_type_credits_and_pixels";
      
      public static const const_366:String = "pricing_model_bundle";
      
      public static const const_423:String = "pricing_model_single";
      
      public static const const_531:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1300:String = "pricing_model_unknown";
      
      public static const const_377:String = "price_type_pixels";
       
      
      private var var_2035:int;
      
      private var var_855:int;
      
      private var _offerId:int;
      
      private var var_854:int;
      
      private var var_427:String;
      
      private var var_602:String;
      
      private var var_419:ICatalogPage;
      
      private var var_426:IProductContainer;
      
      private var var_1258:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1258 = param1.localizationId;
         var_855 = param1.priceInCredits;
         var_854 = param1.priceInPixels;
         var_419 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_427;
      }
      
      public function get page() : ICatalogPage
      {
         return var_419;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2035 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_426;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_854;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1258 = "";
         var_855 = 0;
         var_854 = 0;
         var_419 = null;
         if(var_426 != null)
         {
            var_426.dispose();
            var_426 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_2035;
      }
      
      public function get priceInCredits() : int
      {
         return var_855;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_427 = const_423;
            }
            else
            {
               var_427 = const_376;
            }
         }
         else if(param1.length > 1)
         {
            var_427 = const_366;
         }
         else
         {
            var_427 = const_1300;
         }
      }
      
      public function get priceType() : String
      {
         return var_602;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_427)
         {
            case const_423:
               var_426 = new SingleProductContainer(this,param1);
               break;
            case const_376:
               var_426 = new MultiProductContainer(this,param1);
               break;
            case const_366:
               var_426 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_427);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1258;
      }
      
      private function analyzePriceType() : void
      {
         if(var_855 > 0 && var_854 > 0)
         {
            var_602 = const_435;
         }
         else if(var_855 > 0)
         {
            var_602 = const_286;
         }
         else if(var_854 > 0)
         {
            var_602 = const_377;
         }
         else
         {
            var_602 = const_807;
         }
      }
   }
}
