package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1944:int;
      
      private var var_1845:int;
      
      private var var_1947:Boolean;
      
      private var var_1943:Boolean;
      
      private var var_1946:Array;
      
      private var var_1849:Boolean;
      
      private var var_1261:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_642:Array;
      
      private var var_1169:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1845;
      }
      
      public function get description() : String
      {
         return var_1169;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1943;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1944;
      }
      
      public function set description(param1:String) : void
      {
         var_1169 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1849 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1944 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1261;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1946;
      }
      
      public function get tags() : Array
      {
         return var_642;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1849;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1845 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1947 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_642 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1946 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1261 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1947;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1943 = param1;
      }
   }
}
