package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_2016:Number = 1;
      
      private var var_205:Number = 1;
      
      private var var_2224:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2224 = param1;
         var_205 = param2;
         var_2016 = param3;
      }
      
      public function get scale() : Number
      {
         return var_205;
      }
      
      public function get heightScale() : Number
      {
         return var_2016;
      }
   }
}
