package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_223:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2096:Boolean = false;
      
      private var var_2094:int = 0;
      
      private var var_2095:int = 0;
      
      private var var_1703:int;
      
      private var var_2097:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_223,param6,param7);
         var_2097 = param1;
         var_2095 = param2;
         var_2094 = param3;
         var_2096 = param4;
         var_1703 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1703;
      }
      
      public function get pastPeriods() : int
      {
         return var_2094;
      }
      
      public function get periodsLeft() : int
      {
         return var_2095;
      }
      
      public function get daysLeft() : int
      {
         return var_2097;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2096;
      }
   }
}
