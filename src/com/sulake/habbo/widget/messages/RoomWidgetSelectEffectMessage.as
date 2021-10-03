package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_539:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_564:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_629:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_2069:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         var_2069 = param2;
      }
      
      public function get effectType() : int
      {
         return var_2069;
      }
   }
}
