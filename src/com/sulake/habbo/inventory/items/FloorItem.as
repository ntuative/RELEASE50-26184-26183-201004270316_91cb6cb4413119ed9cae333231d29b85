package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2284:Boolean;
      
      protected var var_1477:Number;
      
      protected var var_2285:Boolean;
      
      protected var _type:int;
      
      protected var var_2283:Boolean;
      
      protected var var_2068:int;
      
      protected var var_2287:Boolean;
      
      protected var var_1402:String;
      
      protected var var_1909:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1612:String;
      
      protected var var_1914:Boolean;
      
      protected var _category:int;
      
      protected var var_1911:int;
      
      protected var var_2286:int;
      
      protected var var_1913:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1914 = param5;
         var_2287 = param6;
         var_2284 = param7;
         var_2285 = param8;
         var_1402 = param9;
         var_1477 = param10;
         var_2286 = param11;
         var_1913 = param12;
         var_1911 = param13;
         var_1909 = param14;
         var_1612 = param15;
         var_2068 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2283;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1477;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2283 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_2068;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2285;
      }
      
      public function get slotId() : String
      {
         return var_1612;
      }
      
      public function get expires() : int
      {
         return var_2286;
      }
      
      public function get creationYear() : int
      {
         return var_1909;
      }
      
      public function get creationDay() : int
      {
         return var_1913;
      }
      
      public function get stuffData() : String
      {
         return var_1402;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2287;
      }
      
      public function get groupable() : Boolean
      {
         return var_1914;
      }
      
      public function get creationMonth() : int
      {
         return var_1911;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2284;
      }
   }
}
