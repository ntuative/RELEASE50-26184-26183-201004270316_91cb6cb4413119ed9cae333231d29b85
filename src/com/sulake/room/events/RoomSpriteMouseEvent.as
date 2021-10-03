package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1675:Boolean = false;
      
      private var var_1681:Boolean = false;
      
      private var var_1684:String = "";
      
      private var _type:String = "";
      
      private var var_1676:Boolean = false;
      
      private var var_1679:Number = 0;
      
      private var var_1678:Number = 0;
      
      private var var_1680:Number = 0;
      
      private var var_1682:String = "";
      
      private var var_1683:Number = 0;
      
      private var var_1677:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1682 = param2;
         var_1684 = param3;
         var_1678 = param4;
         var_1680 = param5;
         var_1679 = param6;
         var_1683 = param7;
         var_1677 = param8;
         var_1681 = param9;
         var_1676 = param10;
         var_1675 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1677;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1675;
      }
      
      public function get localX() : Number
      {
         return var_1679;
      }
      
      public function get localY() : Number
      {
         return var_1683;
      }
      
      public function get canvasId() : String
      {
         return var_1682;
      }
      
      public function get altKey() : Boolean
      {
         return var_1681;
      }
      
      public function get spriteTag() : String
      {
         return var_1684;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1678;
      }
      
      public function get screenY() : Number
      {
         return var_1680;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1676;
      }
   }
}
