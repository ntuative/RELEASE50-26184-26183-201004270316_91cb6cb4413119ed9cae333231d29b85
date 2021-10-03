package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_611:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1625:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_611);
         var_1625 = param1;
      }
      
      public function get tag() : String
      {
         return var_1625;
      }
   }
}
