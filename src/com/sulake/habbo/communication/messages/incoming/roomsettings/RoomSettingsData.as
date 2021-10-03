package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_382:int = 0;
      
      public static const const_130:int = 2;
      
      public static const const_182:int = 1;
      
      public static const const_627:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1947:Boolean;
      
      private var var_1943:Boolean;
      
      private var var_1945:int;
      
      private var var_1946:Array;
      
      private var var_1942:int;
      
      private var var_1849:Boolean;
      
      private var var_1169:String;
      
      private var var_1944:int;
      
      private var var_1845:int;
      
      private var var_1261:int;
      
      private var _roomId:int;
      
      private var var_642:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1944;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1944 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_642;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1849;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1942 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1946 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_642 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1947;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1943;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1945;
      }
      
      public function get categoryId() : int
      {
         return var_1261;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1849 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1942;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1946;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1845 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1947 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1943 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1945 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1845;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1261 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1169 = param1;
      }
      
      public function get description() : String
      {
         return var_1169;
      }
   }
}
