package com.sulake.room.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   
   public class RoomGeometry implements IRoomGeometry
   {
      
      public static const const_694:Number = 64;
      
      public static const const_895:Number = 32;
       
      
      private var var_73:Vector3d;
      
      private var var_448:Number = 1;
      
      private var var_449:Number = 1;
      
      private var _y:Vector3d;
      
      private var var_1588:Number = 1;
      
      private var var_79:int = 0;
      
      private var var_450:Map = null;
      
      private var var_1100:Vector3d;
      
      private var var_447:Number = 1;
      
      private var _width:Number;
      
      private var var_205:Number = 1;
      
      private var var_242:Vector3d;
      
      private var var_1586:Number = 1;
      
      private var var_2376:Number = 500;
      
      private var var_1587:Number = 1;
      
      private var var_82:Vector3d;
      
      private var var_81:Vector3d;
      
      private var var_2375:Number = -500;
      
      public function RoomGeometry(param1:Number, param2:IVector3d, param3:IVector3d, param4:IVector3d = null)
      {
         super();
         this.scale = param1;
         var_82 = new Vector3d();
         _y = new Vector3d();
         var_81 = new Vector3d();
         var_1100 = new Vector3d();
         var_1588 = 1;
         var_1587 = 1;
         x_scale = 1;
         y_scale = 1;
         var_1586 = Math.sqrt(0.5) / Math.sqrt(0.75);
         z_scale = 1;
         location = new Vector3d(param3.x,param3.y,param3.z);
         direction = new Vector3d(param2.x,param2.y,param2.z);
         if(param4 != null)
         {
            setDepthVector(param4);
         }
         else
         {
            setDepthVector(param2);
         }
         var_450 = new Map();
      }
      
      public static function getIntersectionVector(param1:IVector3d, param2:IVector3d, param3:IVector3d, param4:IVector3d) : IVector3d
      {
         var _loc5_:Number = Vector3d.dotProduct(param2,param4);
         if(Math.abs(_loc5_) < 0.00001)
         {
            return null;
         }
         var _loc6_:Vector3d = Vector3d.dif(param1,param3);
         var _loc7_:Number = -Vector3d.dotProduct(param4,_loc6_) / _loc5_;
         return Vector3d.sum(param1,Vector3d.product(param2,_loc7_));
      }
      
      public function set direction(param1:IVector3d) : void
      {
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = null;
         var _loc24_:* = null;
         var _loc25_:* = null;
         if(param1 == null)
         {
            return;
         }
         if(var_242 == null)
         {
            var_242 = new Vector3d();
         }
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var_242.assign(param1);
         if(var_242.x != _loc2_ || var_242.y != _loc3_ || var_242.z != _loc4_)
         {
            ++var_79;
         }
         var _loc5_:Vector3d = new Vector3d(0,1,0);
         var _loc6_:Vector3d = new Vector3d(0,0,1);
         var _loc7_:Vector3d = new Vector3d(1,0,0);
         var _loc8_:Number = param1.x / 180 * 0;
         var _loc9_:Number = param1.y / 180 * 0;
         var _loc10_:Number = param1.z / 180 * 0;
         var _loc11_:Number = Math.cos(_loc8_);
         var _loc12_:Number = Math.sin(_loc8_);
         var _loc13_:Vector3d = Vector3d.sum(Vector3d.product(_loc5_,_loc11_),Vector3d.product(_loc7_,-_loc12_));
         var _loc14_:Vector3d = new Vector3d(_loc6_.x,_loc6_.y,_loc6_.z);
         var _loc15_:Vector3d = Vector3d.sum(Vector3d.product(_loc5_,_loc12_),Vector3d.product(_loc7_,_loc11_));
         var _loc16_:Number = Math.cos(_loc9_);
         var _loc17_:Number = Math.sin(_loc9_);
         var _loc18_:Vector3d = new Vector3d(_loc13_.x,_loc13_.y,_loc13_.z);
         var _loc19_:Vector3d = Vector3d.sum(Vector3d.product(_loc14_,_loc16_),Vector3d.product(_loc15_,_loc17_));
         var _loc20_:Vector3d = Vector3d.sum(Vector3d.product(_loc14_,-_loc17_),Vector3d.product(_loc15_,_loc16_));
         if(_loc10_ != 0)
         {
            _loc21_ = Math.cos(_loc10_);
            _loc22_ = Math.sin(_loc10_);
            _loc23_ = Vector3d.sum(Vector3d.product(_loc18_,_loc21_),Vector3d.product(_loc19_,_loc22_));
            _loc24_ = Vector3d.sum(Vector3d.product(_loc18_,-_loc22_),Vector3d.product(_loc19_,_loc21_));
            _loc25_ = new Vector3d(_loc20_.x,_loc20_.y,_loc20_.z);
            var_82.assign(_loc23_);
            _y.assign(_loc24_);
            var_81.assign(_loc25_);
         }
         else
         {
            var_82.assign(_loc18_);
            _y.assign(_loc19_);
            var_81.assign(_loc20_);
         }
      }
      
      public function set z_scale(param1:Number) : void
      {
         if(var_449 != param1 * var_1586)
         {
            var_449 = param1 * var_1586;
            ++var_79;
         }
      }
      
      public function set x_scale(param1:Number) : void
      {
         if(var_448 != param1 * var_1588)
         {
            var_448 = param1 * var_1588;
            ++var_79;
         }
      }
      
      public function set scale(param1:Number) : void
      {
         if(param1 <= 1)
         {
            param1 = 1;
         }
         param1 *= Math.sqrt(0.5);
         if(param1 != var_205)
         {
            var_205 = param1;
            ++var_79;
         }
      }
      
      public function set y_scale(param1:Number) : void
      {
         if(var_447 != param1 * var_1587)
         {
            var_447 = param1 * var_1587;
            ++var_79;
         }
      }
      
      public function dispose() : void
      {
         var_82 = null;
         _y = null;
         var_81 = null;
         var_73 = null;
         var_242 = null;
         if(var_450 != null)
         {
            var_450.dispose();
            var_450 = null;
         }
      }
      
      public function setDisplacement(param1:IVector3d, param2:IVector3d) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(param1 == null || param2 == null)
         {
            return;
         }
         if(var_450 != null)
         {
            _loc3_ = int(Math.round(param1.x)) + "_" + int(Math.round(param1.y)) + "_" + int(Math.round(param1.z));
            var_450.remove(_loc3_);
            _loc4_ = new Vector3d();
            _loc4_.assign(param2);
            var_450.add(_loc3_,_loc4_);
            ++var_79;
         }
      }
      
      public function get direction() : IVector3d
      {
         return new Vector3d(var_242.x,var_242.y,var_242.z);
      }
      
      public function setDepthVector(param1:IVector3d) : void
      {
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc2_:Vector3d = new Vector3d(0,1,0);
         var _loc3_:Vector3d = new Vector3d(0,0,1);
         var _loc4_:Vector3d = new Vector3d(1,0,0);
         var _loc5_:Number = param1.x / 180 * 0;
         var _loc6_:Number = param1.y / 180 * 0;
         var _loc7_:Number = param1.z / 180 * 0;
         var _loc8_:Number = Math.cos(_loc5_);
         var _loc9_:Number = Math.sin(_loc5_);
         var _loc10_:Vector3d = Vector3d.sum(Vector3d.product(_loc2_,_loc8_),Vector3d.product(_loc4_,-_loc9_));
         var _loc11_:Vector3d = new Vector3d(_loc3_.x,_loc3_.y,_loc3_.z);
         var _loc12_:Vector3d = Vector3d.sum(Vector3d.product(_loc2_,_loc9_),Vector3d.product(_loc4_,_loc8_));
         var _loc13_:Number = Math.cos(_loc6_);
         var _loc14_:Number = Math.sin(_loc6_);
         var _loc15_:Vector3d = new Vector3d(_loc10_.x,_loc10_.y,_loc10_.z);
         var _loc16_:Vector3d = Vector3d.sum(Vector3d.product(_loc11_,_loc13_),Vector3d.product(_loc12_,_loc14_));
         var _loc17_:Vector3d = Vector3d.sum(Vector3d.product(_loc11_,-_loc14_),Vector3d.product(_loc12_,_loc13_));
         if(_loc7_ != 0)
         {
            _loc18_ = Math.cos(_loc7_);
            _loc19_ = Math.sin(_loc7_);
            _loc20_ = Vector3d.sum(Vector3d.product(_loc15_,_loc18_),Vector3d.product(_loc16_,_loc19_));
            _loc21_ = Vector3d.sum(Vector3d.product(_loc15_,-_loc19_),Vector3d.product(_loc16_,_loc18_));
            _loc22_ = new Vector3d(_loc17_.x,_loc17_.y,_loc17_.z);
            var_1100.assign(_loc22_);
         }
         else
         {
            var_1100.assign(_loc17_);
         }
         ++var_79;
      }
      
      public function getScreenPosition(param1:IVector3d) : IVector3d
      {
         var _loc2_:Vector3d = Vector3d.dif(param1,var_73);
         _loc2_.x *= var_448;
         _loc2_.y *= var_447;
         _loc2_.z *= var_449;
         var _loc3_:Number = Vector3d.scalarProjection(_loc2_,var_1100);
         if(_loc3_ < var_2375 || _loc3_ > var_2376)
         {
            return null;
         }
         var _loc4_:Number = Vector3d.scalarProjection(_loc2_,var_82);
         var _loc5_:Number = -Vector3d.scalarProjection(_loc2_,_y);
         _loc4_ *= var_205;
         _loc5_ *= var_205;
         var _loc6_:IVector3d = getDisplacenent(param1);
         if(_loc6_ != null)
         {
            _loc2_ = Vector3d.dif(param1,var_73);
            _loc2_.add(_loc6_);
            _loc2_.x *= var_448;
            _loc2_.y *= var_447;
            _loc2_.z *= var_449;
            _loc3_ = Vector3d.scalarProjection(_loc2_,var_1100);
         }
         return new Vector3d(_loc4_,_loc5_,_loc3_);
      }
      
      public function get location() : IVector3d
      {
         return new Vector3d(0 * var_448,0 * var_447,0 * var_449);
      }
      
      public function getCoordinatePosition(param1:IVector3d) : IVector3d
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Number = Vector3d.scalarProjection(param1,var_82);
         var _loc3_:Number = Vector3d.scalarProjection(param1,_y);
         var _loc4_:Number = Vector3d.scalarProjection(param1,var_81);
         return new Vector3d(_loc2_,_loc3_,_loc4_);
      }
      
      public function get directionAxis() : IVector3d
      {
         return new Vector3d(var_81.x,var_81.y,var_81.z);
      }
      
      public function isZoomedIn() : Boolean
      {
         return scale == const_694;
      }
      
      public function get scale() : Number
      {
         return var_205 / Math.sqrt(0.5);
      }
      
      public function get updateId() : int
      {
         return var_79;
      }
      
      public function performZoom() : void
      {
         if(isZoomedIn())
         {
            scale = const_895;
         }
         else
         {
            scale = const_694;
         }
      }
      
      public function getScreenPoint(param1:IVector3d) : Point
      {
         var _loc2_:IVector3d = getScreenPosition(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         return new Point(_loc2_.x,_loc2_.y);
      }
      
      public function performZoomOut() : void
      {
         scale = const_895;
      }
      
      public function adjustLocation(param1:IVector3d, param2:Number) : void
      {
         if(param1 == null || var_81 == null)
         {
            return;
         }
         var _loc3_:Vector3d = Vector3d.product(var_81,param2);
         var _loc4_:Vector3d = new Vector3d(param1.x + _loc3_.x,param1.y + _loc3_.y,param1.z + _loc3_.z);
         location = _loc4_;
      }
      
      public function set location(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_73 == null)
         {
            var_73 = new Vector3d();
         }
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var_73.assign(param1);
         var_73.x = 0 / var_448;
         var_73.y = 0 / var_447;
         var_73.z = 0 / var_449;
         if(var_73.x != _loc2_ || var_73.y != _loc3_ || var_73.z != _loc4_)
         {
            ++var_79;
         }
      }
      
      private function getDisplacenent(param1:IVector3d) : IVector3d
      {
         var _loc2_:* = null;
         if(var_450 != null)
         {
            _loc2_ = int(Math.round(param1.x)) + "_" + int(Math.round(param1.y)) + "_" + int(Math.round(param1.z));
            return var_450.getValue(_loc2_);
         }
         return null;
      }
      
      public function getPlanePosition(param1:Point, param2:IVector3d, param3:IVector3d, param4:IVector3d) : Point
      {
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc5_:Number = param1.x / var_205;
         var _loc6_:Number = -param1.y / var_205;
         var _loc7_:IVector3d = Vector3d.sum(Vector3d.product(var_82,_loc5_),Vector3d.product(_y,_loc6_));
         var _loc8_:Vector3d = new Vector3d(0 * var_448,0 * var_447,0 * var_449);
         var _loc9_:IVector3d = Vector3d.sum(_loc8_,_loc7_);
         var _loc10_:IVector3d = var_81;
         var _loc11_:Vector3d = new Vector3d(param2.x * var_448,param2.y * var_447,param2.z * var_449);
         var _loc12_:Vector3d = new Vector3d(param3.x * var_448,param3.y * var_447,param3.z * var_449);
         var _loc13_:Vector3d = new Vector3d(param4.x * var_448,param4.y * var_447,param4.z * var_449);
         var _loc14_:IVector3d = Vector3d.crossProduct(_loc12_,_loc13_);
         var _loc15_:Vector3d = RoomGeometry.getIntersectionVector(_loc9_,_loc10_,_loc11_,_loc14_) as Vector3d;
         if(_loc15_ != null)
         {
            _loc15_.sub(_loc11_);
            _loc16_ = Vector3d.scalarProjection(_loc15_,param3) / _loc12_.length * param3.length;
            _loc17_ = Vector3d.scalarProjection(_loc15_,param4) / _loc13_.length * param4.length;
            return new Point(_loc16_,_loc17_);
         }
         return null;
      }
   }
}
