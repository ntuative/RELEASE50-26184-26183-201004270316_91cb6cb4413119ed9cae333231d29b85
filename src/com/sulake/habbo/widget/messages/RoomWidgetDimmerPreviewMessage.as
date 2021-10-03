package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerPreviewMessage extends RoomWidgetMessage
   {
      
      public static const const_614:String = "RWDPM_PREVIEW_DIMMER_PRESET";
       
      
      private var var_1095:int;
      
      private var _color:uint;
      
      private var var_1673:Boolean;
      
      public function RoomWidgetDimmerPreviewMessage(param1:uint, param2:int, param3:Boolean)
      {
         super(const_614);
         _color = param1;
         var_1095 = param2;
         var_1673 = param3;
      }
      
      public function get brightness() : int
      {
         return var_1095;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get bgOnly() : Boolean
      {
         return var_1673;
      }
   }
}
