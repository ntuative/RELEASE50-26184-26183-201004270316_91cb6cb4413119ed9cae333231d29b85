package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1073:int = 31;
      
      private static const const_1072:int = 32;
      
      private static const const_766:int = 10;
      
      private static const const_507:int = 20;
       
      
      private var var_609:Boolean = false;
      
      private var var_245:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_245 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_609 = true;
            var_245 = new Array();
            var_245.push(const_1073);
            var_245.push(const_1072);
            return;
         }
         if(param1 > 0 && param1 <= const_766)
         {
            if(var_609)
            {
               var_609 = false;
               var_245 = new Array();
               var_245.push(const_766 + param1);
               var_245.push(const_507 + param1);
               var_245.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
