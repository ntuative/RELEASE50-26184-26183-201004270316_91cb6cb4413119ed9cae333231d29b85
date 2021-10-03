package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1005:String;
      
      private var var_1916:int;
      
      private var var_1912:int;
      
      private var var_1477:int;
      
      private var var_1909:int;
      
      private var _category:int;
      
      private var var_2396:int;
      
      private var var_1913:int;
      
      private var var_1915:int;
      
      private var var_1910:int;
      
      private var var_1911:int;
      
      private var var_1914:Boolean;
      
      private var var_1402:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1916 = param1;
         var_1005 = param2;
         var_1912 = param3;
         var_1910 = param4;
         _category = param5;
         var_1402 = param6;
         var_1477 = param7;
         var_1915 = param8;
         var_1913 = param9;
         var_1911 = param10;
         var_1909 = param11;
         var_1914 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1910;
      }
      
      public function get extra() : int
      {
         return var_1477;
      }
      
      public function get stuffData() : String
      {
         return var_1402;
      }
      
      public function get groupable() : Boolean
      {
         return var_1914;
      }
      
      public function get creationMonth() : int
      {
         return var_1911;
      }
      
      public function get roomItemID() : int
      {
         return var_1912;
      }
      
      public function get itemType() : String
      {
         return var_1005;
      }
      
      public function get itemID() : int
      {
         return var_1916;
      }
      
      public function get songID() : int
      {
         return var_1477;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1915;
      }
      
      public function get creationYear() : int
      {
         return var_1909;
      }
      
      public function get creationDay() : int
      {
         return var_1913;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
