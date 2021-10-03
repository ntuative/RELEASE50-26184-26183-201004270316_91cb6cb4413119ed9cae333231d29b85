package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_521:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_634:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_242:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1595:Point;
      
      private var var_1594:Rectangle;
      
      private var var_205:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1594 = param2;
         var_1595 = param3;
         var_205 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1594 != null)
         {
            return var_1594.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_205;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1595 != null)
         {
            return var_1595.clone();
         }
         return null;
      }
   }
}
