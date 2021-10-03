package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1925:Number;
      
      private var var_584:Number = 0;
      
      private var var_1926:Number;
      
      private var var_585:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1925 = param1;
         var_1926 = param2;
      }
      
      public function update() : void
      {
         var_585 += var_1926;
         var_584 += var_585;
         if(var_584 > 0)
         {
            var_584 = 0;
            var_585 = var_1925 * -1 * var_585;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_585 = param1;
         var_584 = 0;
      }
      
      public function get location() : Number
      {
         return var_584;
      }
   }
}
