package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetChatUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_131:int = 1;
      
      public static const const_240:int = 4;
      
      public static const const_244:int = 3;
      
      public static const const_119:int = 0;
      
      public static const const_567:String = "RWCUE_EVENT_CHAT";
      
      public static const const_105:int = 2;
       
      
      private var var_2277:int;
      
      private var var_188:String = "";
      
      private var var_2276:BitmapData;
      
      private var _userName:String;
      
      private var var_1193:int = 0;
      
      private var var_2278:uint;
      
      private var _userId:int = 0;
      
      private var _roomCategory:int;
      
      private var var_2275:Number;
      
      private var var_2274:Number;
      
      private var _roomId:int;
      
      public function RoomWidgetChatUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:int, param6:Number, param7:Number, param8:BitmapData, param9:uint, param10:int, param11:int, param12:int = 0, param13:Boolean = false, param14:Boolean = false)
      {
         super(param1,param13,param14);
         _userId = param2;
         var_188 = param3;
         var_1193 = param12;
         _userName = param4;
         var_2277 = param5;
         var_2275 = param6;
         var_2274 = param7;
         var_2276 = param8;
         var_2278 = param9;
         _roomId = param10;
         _roomCategory = param11;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get userImage() : BitmapData
      {
         return var_2276;
      }
      
      public function get text() : String
      {
         return var_188;
      }
      
      public function get userX() : Number
      {
         return var_2275;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function get userCategory() : int
      {
         return var_2277;
      }
      
      public function get chatType() : int
      {
         return var_1193;
      }
      
      public function get userColor() : uint
      {
         return var_2278;
      }
      
      public function get userY() : Number
      {
         return var_2274;
      }
   }
}
