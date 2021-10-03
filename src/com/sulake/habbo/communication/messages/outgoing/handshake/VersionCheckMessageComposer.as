package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2155:String;
      
      private var var_1159:String;
      
      private var var_2156:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2156 = param1;
         var_1159 = param2;
         var_2155 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2156,var_1159,var_2155];
      }
      
      public function dispose() : void
      {
      }
   }
}
