package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_396:FloorRasterizer;
      
      private var var_843:Boolean = false;
      
      private var var_563:PlaneMaskManager;
      
      private var var_394:WallRasterizer;
      
      private var var_562:WallAdRasterizer;
      
      private var var_395:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_394 = new WallRasterizer();
         var_396 = new FloorRasterizer();
         var_562 = new WallAdRasterizer();
         var_395 = new LandscapeRasterizer();
         var_563 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_394;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_562;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_396;
      }
      
      public function get initialized() : Boolean
      {
         return var_843;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_563;
      }
      
      public function dispose() : void
      {
         if(var_394 != null)
         {
            var_394.dispose();
            var_394 = null;
         }
         if(var_396 != null)
         {
            var_396.dispose();
            var_396 = null;
         }
         if(var_562 != null)
         {
            var_562.dispose();
            var_562 = null;
         }
         if(var_395 != null)
         {
            var_395.dispose();
            var_395 = null;
         }
         if(var_563 != null)
         {
            var_563.dispose();
            var_563 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_394.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_396.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_562.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_395.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_563.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_394 != null)
         {
            var_394.clearCache();
         }
         if(var_396 != null)
         {
            var_396.clearCache();
         }
         if(var_395 != null)
         {
            var_395.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_395;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_843)
         {
            return;
         }
         var_394.initializeAssetCollection(param1);
         var_396.initializeAssetCollection(param1);
         var_562.initializeAssetCollection(param1);
         var_395.initializeAssetCollection(param1);
         var_563.initializeAssetCollection(param1);
         var_843 = true;
      }
   }
}
