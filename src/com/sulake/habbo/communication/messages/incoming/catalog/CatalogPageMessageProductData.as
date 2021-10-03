package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_198:String = "e";
      
      public static const const_80:String = "i";
      
      public static const const_86:String = "s";
       
      
      private var var_1001:String;
      
      private var var_1186:String;
      
      private var var_1189:int;
      
      private var var_2162:int;
      
      private var var_1002:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1186 = param1.readString();
         var_2162 = param1.readInteger();
         var_1001 = param1.readString();
         var_1002 = param1.readInteger();
         var_1189 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1002;
      }
      
      public function get productType() : String
      {
         return var_1186;
      }
      
      public function get expiration() : int
      {
         return var_1189;
      }
      
      public function get furniClassId() : int
      {
         return var_2162;
      }
      
      public function get extraParam() : String
      {
         return var_1001;
      }
   }
}
