package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1225:int;
      
      private var var_1467:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1225 = param1;
         var_1467 = param2;
         Logger.log("READ NODE: " + var_1225 + ", " + var_1467);
      }
      
      public function get nodeName() : String
      {
         return var_1467;
      }
      
      public function get nodeId() : int
      {
         return var_1225;
      }
   }
}
