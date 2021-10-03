package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_552:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_188:String;
      
      private var var_730:String;
      
      private var var_1552:String;
      
      private var var_148:int = -1;
      
      private var var_27:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_148 = param2;
         var_1552 = param3;
         var_188 = param4;
         var_730 = param5;
         var_27 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1552;
      }
      
      public function get colorHex() : String
      {
         return var_730;
      }
      
      public function get text() : String
      {
         return var_188;
      }
      
      public function get objectId() : int
      {
         return var_148;
      }
      
      public function get controller() : Boolean
      {
         return var_27;
      }
   }
}
