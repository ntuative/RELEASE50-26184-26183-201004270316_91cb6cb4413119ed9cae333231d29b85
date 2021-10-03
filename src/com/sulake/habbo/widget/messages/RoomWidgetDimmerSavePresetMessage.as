package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_550:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1714:int;
      
      private var var_1713:int;
      
      private var var_1903:Boolean;
      
      private var var_1095:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_550);
         var_1713 = param1;
         var_1714 = param2;
         _color = param3;
         var_1095 = param4;
         var_1903 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1714;
      }
      
      public function get presetNumber() : int
      {
         return var_1713;
      }
      
      public function get brightness() : int
      {
         return var_1095;
      }
      
      public function get apply() : Boolean
      {
         return var_1903;
      }
   }
}
