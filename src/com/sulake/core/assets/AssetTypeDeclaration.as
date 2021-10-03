package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1874:Class;
      
      private var var_1876:Class;
      
      private var var_1875:String;
      
      private var var_1199:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1875 = param1;
         var_1876 = param2;
         var_1874 = param3;
         if(rest == null)
         {
            var_1199 = new Array();
         }
         else
         {
            var_1199 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1874;
      }
      
      public function get assetClass() : Class
      {
         return var_1876;
      }
      
      public function get mimeType() : String
      {
         return var_1875;
      }
      
      public function get fileTypes() : Array
      {
         return var_1199;
      }
   }
}
