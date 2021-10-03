package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_453:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_395:int = 0;
      
      public static const const_1025:int = 2;
      
      public static const const_1011:int = 1;
      
      public static const const_706:Boolean = false;
      
      public static const const_569:String = "";
      
      public static const const_430:int = 0;
      
      public static const const_411:int = 0;
      
      public static const const_467:int = 0;
       
      
      private var var_2078:int = 0;
      
      private var var_1625:String = "";
      
      private var var_1489:int = 0;
      
      private var var_2079:int = 0;
      
      private var var_2077:Number = 0;
      
      private var var_1627:int = 255;
      
      private var var_2080:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2078;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1489 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2077;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2079 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2078 = param1;
      }
      
      public function get tag() : String
      {
         return var_1625;
      }
      
      public function get alpha() : int
      {
         return var_1627;
      }
      
      public function get ink() : int
      {
         return var_1489;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2077 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2079;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2080 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2080;
      }
      
      public function set tag(param1:String) : void
      {
         var_1625 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1627 = param1;
      }
   }
}
