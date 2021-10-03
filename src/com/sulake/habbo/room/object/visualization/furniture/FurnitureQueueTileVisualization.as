package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1050:int = 1;
      
      private static const const_1072:int = 3;
      
      private static const const_1051:int = 2;
      
      private static const const_1052:int = 15;
       
      
      private var var_812:int;
      
      private var var_245:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_245 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1051)
         {
            var_245 = new Array();
            var_245.push(const_1050);
            var_812 = const_1052;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_812 > 0)
         {
            --var_812;
         }
         if(var_812 == 0)
         {
            if(false)
            {
               super.setAnimation(var_245.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
