package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_544:String = "RWFIUE_FURNI";
       
      
      private var var_1339:Boolean = false;
      
      private var _id:int = 0;
      
      private var var_1189:int = -1;
      
      private var var_1336:Boolean = false;
      
      private var var_1709:Boolean = false;
      
      private var _category:int = 0;
      
      private var var_1802:Boolean = false;
      
      private var var_1803:Boolean = false;
      
      private var _name:String = "";
      
      private var _image:BitmapData = null;
      
      private var var_1169:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         var_1339 = param1;
      }
      
      public function get description() : String
      {
         return var_1169;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         var_1802 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         var_1803 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return var_1709;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get isWallItem() : Boolean
      {
         return var_1803;
      }
      
      public function get isRoomController() : Boolean
      {
         return var_1339;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set expiration(param1:int) : void
      {
         var_1189 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return var_1802;
      }
      
      public function get expiration() : int
      {
         return var_1189;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1336 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1336;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         var_1709 = param1;
      }
      
      public function set id(param1:int) : void
      {
         _id = param1;
      }
      
      public function set category(param1:int) : void
      {
         _category = param1;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function set description(param1:String) : void
      {
         var_1169 = param1;
      }
   }
}
