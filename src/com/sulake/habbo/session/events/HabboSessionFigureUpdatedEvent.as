package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_551:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var var_638:String;
      
      private var var_312:String;
      
      private var _userId:int;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_551,param4,param5);
         _userId = param1;
         var_312 = param2;
         var_638 = param3;
      }
      
      public function get gender() : String
      {
         return var_638;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
