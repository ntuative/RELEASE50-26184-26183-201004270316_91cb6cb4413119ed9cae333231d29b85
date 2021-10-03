package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_353:Number = 0.5;
      
      private static const const_774:int = 3;
      
      private static const const_1090:Number = 1;
       
      
      private var var_2021:Boolean = false;
      
      private var var_2020:Boolean = false;
      
      private var var_1049:int = 0;
      
      private var var_268:Vector3d = null;
      
      private var var_2026:int = 0;
      
      private var var_2019:int = 0;
      
      private var var_2022:Boolean = false;
      
      private var var_2023:int = -2;
      
      private var var_2027:Boolean = false;
      
      private var var_2024:int = 0;
      
      private var var_2028:int = -1;
      
      private var var_424:Vector3d = null;
      
      private var var_2025:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2026;
      }
      
      public function get targetId() : int
      {
         return var_2028;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2024 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2026 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2021 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2028 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2020 = param1;
      }
      
      public function dispose() : void
      {
         var_424 = null;
         var_268 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_424 == null)
         {
            var_424 = new Vector3d();
         }
         var_424.assign(param1);
         var_1049 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2023;
      }
      
      public function get screenHt() : int
      {
         return var_2025;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2019 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_268;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2025 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2024;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2021;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2020;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_424 != null && var_268 != null)
         {
            ++var_1049;
            _loc2_ = Vector3d.dif(var_424,var_268);
            if(_loc2_.length <= const_353)
            {
               var_268 = var_424;
               var_424 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_353 * (const_774 + 1))
               {
                  _loc2_.mul(const_353);
               }
               else if(var_1049 <= const_774)
               {
                  _loc2_.mul(const_353);
               }
               else
               {
                  _loc2_.mul(const_1090);
               }
               var_268 = Vector3d.sum(var_268,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2022 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2019;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2027 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2023 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_268 != null)
         {
            return;
         }
         var_268 = new Vector3d();
         var_268.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2022;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2027;
      }
   }
}
