package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_733:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_733 = new ByteArray();
         var_733.writeShort(param1);
         var_733.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_733.position = 0;
         if(false)
         {
            _loc1_ = var_733.readShort();
            var_733.position = 0;
         }
         return _loc1_;
      }
   }
}
