package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1402:String;
      
      private var var_1005:String;
      
      private var var_1631:Boolean;
      
      private var var_1477:int;
      
      private var var_1632:int;
      
      private var var_1630:Boolean;
      
      private var var_1612:String = "";
      
      private var var_1629:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1219:int;
      
      private var var_1633:Boolean;
      
      private var var_2068:int = -1;
      
      private var var_1634:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1632 = param1;
         var_1005 = param2;
         _objId = param3;
         var_1219 = param4;
         _category = param5;
         var_1402 = param6;
         var_1631 = param7;
         var_1629 = param8;
         var_1633 = param9;
         var_1630 = param10;
         var_1634 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1612;
      }
      
      public function get extra() : int
      {
         return var_1477;
      }
      
      public function get classId() : int
      {
         return var_1219;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1630;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1631;
      }
      
      public function get stripId() : int
      {
         return var_1632;
      }
      
      public function get stuffData() : String
      {
         return var_1402;
      }
      
      public function get songId() : int
      {
         return var_2068;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1612 = param1;
         var_1477 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1005;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1634;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1633;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1629;
      }
   }
}
