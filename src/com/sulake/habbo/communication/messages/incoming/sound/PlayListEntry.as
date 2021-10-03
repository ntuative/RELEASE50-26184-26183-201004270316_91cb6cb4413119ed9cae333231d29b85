package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2068:int;
      
      private var var_2066:int = 0;
      
      private var var_2065:String;
      
      private var var_2067:int;
      
      private var var_2064:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2068 = param1;
         var_2067 = param2;
         var_2064 = param3;
         var_2065 = param4;
      }
      
      public function get length() : int
      {
         return var_2067;
      }
      
      public function get name() : String
      {
         return var_2064;
      }
      
      public function get creator() : String
      {
         return var_2065;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2066;
      }
      
      public function get id() : int
      {
         return var_2068;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2066 = param1;
      }
   }
}
