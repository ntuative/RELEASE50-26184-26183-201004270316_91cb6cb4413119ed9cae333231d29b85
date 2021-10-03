package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1073:int = 31;
      
      private static const const_1072:int = 32;
      
      private static const const_506:int = 30;
      
      private static const const_766:int = 20;
      
      private static const const_507:int = 10;
       
      
      private var var_609:Boolean = false;
      
      private var var_245:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_245 = new Array();
         super();
         super.setAnimation(const_506);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_609 = true;
            var_245 = new Array();
            var_245.push(const_1073);
            var_245.push(const_1072);
            return;
         }
         if(param1 > 0 && param1 <= const_507)
         {
            if(var_609)
            {
               var_609 = false;
               var_245 = new Array();
               if(_direction == 2)
               {
                  var_245.push(const_766 + 5 - param1);
                  var_245.push(const_507 + 5 - param1);
               }
               else
               {
                  var_245.push(const_766 + param1);
                  var_245.push(const_507 + param1);
               }
               var_245.push(const_506);
               return;
            }
            super.setAnimation(const_506);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
