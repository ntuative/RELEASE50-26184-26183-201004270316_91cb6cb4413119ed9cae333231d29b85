package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2101:Number = 0;
      
      private var var_1759:Number = 0;
      
      private var var_1760:Number = 0;
      
      private var var_2100:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1759 = param1;
         var_1760 = param2;
         var_2101 = param3;
         var_2100 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1759;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2101;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1760;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2100;
      }
   }
}
