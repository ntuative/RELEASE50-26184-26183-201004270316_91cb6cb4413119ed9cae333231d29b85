package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_584:RoomObjectLocationCacheItem = null;
      
      private var var_182:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_584 = new RoomObjectLocationCacheItem(param1);
         var_182 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_584;
      }
      
      public function dispose() : void
      {
         if(var_584 != null)
         {
            var_584.dispose();
            var_584 = null;
         }
         if(var_182 != null)
         {
            var_182.dispose();
            var_182 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_182;
      }
   }
}
