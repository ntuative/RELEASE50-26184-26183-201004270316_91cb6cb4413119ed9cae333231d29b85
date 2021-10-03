package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_542:int = -1;
      
      public static const const_967:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2041:int = -1;
      
      private var var_82:int = 0;
      
      private var var_1262:int = 1;
      
      private var var_856:int = 1;
      
      private var var_2043:Boolean = false;
      
      private var var_2042:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_82 = param2;
         _y = param3;
         var_2043 = param5;
         if(param4 < 0)
         {
            param4 = const_542;
         }
         var_856 = param4;
         var_1262 = param4;
         if(param6 >= 0)
         {
            var_2041 = param6;
            var_2042 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_856 > 0 && param1 > var_856)
         {
            param1 = var_856;
         }
         var_1262 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_856;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2042;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_856 < 0)
         {
            return const_542;
         }
         return var_1262;
      }
      
      public function get activeSequence() : int
      {
         return var_2041;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2043;
      }
      
      public function get x() : int
      {
         return var_82;
      }
   }
}
