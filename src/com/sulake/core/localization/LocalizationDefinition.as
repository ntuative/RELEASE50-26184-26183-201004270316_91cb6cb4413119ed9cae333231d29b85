package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1547:String;
      
      private var var_645:String;
      
      private var var_1549:String;
      
      private var var_1548:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1548 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1547 = _loc5_[0];
         var_1549 = _loc5_[1];
         _name = param2;
         var_645 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1547;
      }
      
      public function get languageCode() : String
      {
         return var_1548;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_645;
      }
      
      public function get encoding() : String
      {
         return var_1549;
      }
      
      public function get id() : String
      {
         return var_1548 + "_" + var_1547 + "." + var_1549;
      }
   }
}
