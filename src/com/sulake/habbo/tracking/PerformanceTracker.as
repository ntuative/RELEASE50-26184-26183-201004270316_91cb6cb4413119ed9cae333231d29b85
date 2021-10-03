package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1576:GarbageMonitor = null;
      
      private var var_1324:int = 0;
      
      private var var_1152:Boolean = false;
      
      private var var_1659:String = "";
      
      private var var_1577:String = "";
      
      private var var_369:Number = 0;
      
      private var var_1327:int = 10;
      
      private var var_2348:Array;
      
      private var var_648:int = 0;
      
      private var var_1325:int = 60;
      
      private var var_1087:int = 0;
      
      private var var_1088:int = 0;
      
      private var var_1662:String = "";
      
      private var var_2186:Number = 0;
      
      private var var_1326:int = 1000;
      
      private var var_2187:Boolean = true;
      
      private var var_2188:Number = 0.15;
      
      private var var_149:IHabboConfigurationManager = null;
      
      private var var_1665:String = "";
      
      private var var_1328:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2348 = [];
         super();
         var_1577 = Capabilities.version;
         var_1659 = Capabilities.os;
         var_1152 = Capabilities.isDebugger;
         var_1665 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1576 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1324 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1576.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1576.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_369;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1325 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1577;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1088;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1326)
         {
            ++var_1087;
            _loc3_ = true;
         }
         else
         {
            ++var_648;
            if(var_648 <= 1)
            {
               var_369 = param1;
            }
            else
            {
               _loc4_ = Number(var_648);
               var_369 = var_369 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1324 > var_1325 * 1000 && var_1328 < var_1327)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_369);
            _loc5_ = true;
            if(var_2187 && var_1328 > 0)
            {
               _loc6_ = differenceInPercents(var_2186,var_369);
               if(_loc6_ < var_2188)
               {
                  _loc5_ = false;
               }
            }
            var_1324 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2186 = var_369;
               if(sendReport())
               {
                  ++var_1328;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1327 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1326 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1665,var_1577,var_1659,var_1662,var_1152,_loc4_,_loc3_,var_1088,var_369,var_1087);
            _connection.send(_loc1_);
            var_1088 = 0;
            var_369 = 0;
            var_648 = 0;
            var_1087 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_149 = param1;
         var_1325 = int(var_149.getKey("performancetest.interval","60"));
         var_1326 = int(var_149.getKey("performancetest.slowupdatelimit","1000"));
         var_1327 = int(var_149.getKey("performancetest.reportlimit","10"));
         var_2188 = Number(var_149.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2187 = Boolean(int(var_149.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
