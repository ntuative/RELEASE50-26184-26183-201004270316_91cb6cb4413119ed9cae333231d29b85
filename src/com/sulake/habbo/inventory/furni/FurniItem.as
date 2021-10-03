package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1632:int;
      
      private var var_1629:Boolean;
      
      private var var_2068:int;
      
      private var var_1402:String;
      
      private var var_2222:Boolean = false;
      
      private var var_1634:int;
      
      private var var_457:int;
      
      private var var_1005:String;
      
      private var var_1612:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1219:int;
      
      private var var_1633:Boolean;
      
      private var var_2223:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1632 = param1;
         var_1005 = param2;
         _objId = param3;
         var_1219 = param4;
         var_1402 = param5;
         var_1629 = param6;
         var_1633 = param7;
         var_1634 = param8;
         var_1612 = param9;
         var_2068 = param10;
         var_457 = -1;
      }
      
      public function get songId() : int
      {
         return var_2068;
      }
      
      public function get iconCallbackId() : int
      {
         return var_457;
      }
      
      public function get expiryTime() : int
      {
         return var_1634;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2223 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2222 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_457 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1633;
      }
      
      public function get slotId() : String
      {
         return var_1612;
      }
      
      public function get classId() : int
      {
         return var_1219;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1629;
      }
      
      public function get stuffData() : String
      {
         return var_1402;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1632;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2222;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2223;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1005;
      }
   }
}
