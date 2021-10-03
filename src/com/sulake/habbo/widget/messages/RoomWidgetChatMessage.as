package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_119:int = 0;
      
      public static const const_131:int = 1;
      
      public static const const_105:int = 2;
      
      public static const const_673:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1193:int = 0;
      
      private var var_1650:String = "";
      
      private var var_188:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_188 = param2;
         var_1193 = param3;
         var_1650 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1650;
      }
      
      public function get chatType() : int
      {
         return var_1193;
      }
      
      public function get text() : String
      {
         return var_188;
      }
   }
}
