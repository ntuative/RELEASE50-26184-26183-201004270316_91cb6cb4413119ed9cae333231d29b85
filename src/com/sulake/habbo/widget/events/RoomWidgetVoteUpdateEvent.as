package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_134:String = "RWPUE_VOTE_RESULT";
      
      public static const const_112:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1285:int;
      
      private var var_1086:String;
      
      private var var_756:Array;
      
      private var var_1025:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1086 = param2;
         var_1025 = param3;
         var_756 = param4;
         if(var_756 == null)
         {
            var_756 = [];
         }
         var_1285 = param5;
      }
      
      public function get votes() : Array
      {
         return var_756.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1285;
      }
      
      public function get question() : String
      {
         return var_1086;
      }
      
      public function get choices() : Array
      {
         return var_1025.slice();
      }
   }
}
