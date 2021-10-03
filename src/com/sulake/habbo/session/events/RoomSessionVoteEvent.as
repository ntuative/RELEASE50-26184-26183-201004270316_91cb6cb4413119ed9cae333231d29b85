package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_134:String = "RSPE_VOTE_RESULT";
      
      public static const const_112:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1285:int = 0;
      
      private var var_1086:String = "";
      
      private var var_756:Array;
      
      private var var_1025:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1025 = [];
         var_756 = [];
         super(param1,param2,param7,param8);
         var_1086 = param3;
         var_1025 = param4;
         var_756 = param5;
         if(var_756 == null)
         {
            var_756 = [];
         }
         var_1285 = param6;
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
