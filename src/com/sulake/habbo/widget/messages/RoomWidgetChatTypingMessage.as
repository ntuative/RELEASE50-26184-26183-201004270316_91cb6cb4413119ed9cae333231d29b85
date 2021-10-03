package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_692:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_498:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_692);
         var_498 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_498;
      }
   }
}
