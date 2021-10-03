package com.sulake.habbo.avatar.animation
{
   public class SpriteDataContainer implements ISpriteDataContainer
   {
       
      
      private var _id:String;
      
      private var var_1780:IAnimation;
      
      private var var_1782:Boolean;
      
      private var var_1489:int;
      
      private var var_1176:Array;
      
      private var var_1781:String;
      
      private var _dx:Array;
      
      private var var_1175:Array;
      
      public function SpriteDataContainer(param1:IAnimation, param2:XML)
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         super();
         var_1780 = param1;
         _id = String(param2.@id);
         var_1489 = parseInt(param2.@ink);
         var_1781 = String(param2.@member);
         var_1782 = Boolean(parseInt(param2.@directions));
         _dx = [];
         var_1175 = [];
         var_1176 = [];
         for each(_loc3_ in param2.direction)
         {
            _loc4_ = parseInt(_loc3_.@id);
            _dx[_loc4_] = parseInt(_loc3_.@dx);
            var_1175[_loc4_] = parseInt(_loc3_.@dy);
            var_1176[_loc4_] = parseInt(_loc3_.@dz);
         }
      }
      
      public function get animation() : IAnimation
      {
         return var_1780;
      }
      
      public function get hasDirections() : Boolean
      {
         return var_1782;
      }
      
      public function get member() : String
      {
         return var_1781;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function getDirectionOffsetZ(param1:int) : int
      {
         if(param1 < var_1176.length)
         {
            return var_1176[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetX(param1:int) : int
      {
         if(param1 < _dx.length)
         {
            return _dx[param1];
         }
         return 0;
      }
      
      public function getDirectionOffsetY(param1:int) : int
      {
         if(param1 < var_1175.length)
         {
            return var_1175[param1];
         }
         return 0;
      }
      
      public function get ink() : int
      {
         return var_1489;
      }
   }
}
