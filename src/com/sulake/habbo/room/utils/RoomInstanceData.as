package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_917:LegacyWallGeometry = null;
      
      private var var_630:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_629:TileHeightMap = null;
      
      private var var_2224:String = null;
      
      private var _roomId:int = 0;
      
      private var var_628:SelectedRoomObjectData = null;
      
      private var var_918:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_917 = new LegacyWallGeometry();
         var_918 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_630 != null)
         {
            var_630.dispose();
         }
         var_630 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_629 != null)
         {
            var_629.dispose();
         }
         var_629 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2224 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_917;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_628;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_918;
      }
      
      public function dispose() : void
      {
         if(var_629 != null)
         {
            var_629.dispose();
            var_629 = null;
         }
         if(var_917 != null)
         {
            var_917.dispose();
            var_917 = null;
         }
         if(var_918 != null)
         {
            var_918.dispose();
            var_918 = null;
         }
         if(var_630 != null)
         {
            var_630.dispose();
            var_630 = null;
         }
         if(var_628 != null)
         {
            var_628.dispose();
            var_628 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_629;
      }
      
      public function get worldType() : String
      {
         return var_2224;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_628 != null)
         {
            var_628.dispose();
         }
         var_628 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_630;
      }
   }
}
