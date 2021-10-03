package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_467:ToolbarIconGroup;
      
      private var var_978:Boolean = false;
      
      private var var_1657:String;
      
      private var var_923:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_976:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_34:String = "-1";
      
      private var var_97:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_657:String;
      
      private var var_1658:int;
      
      private var var_656:Timer;
      
      private var var_1420:Array;
      
      private var var_979:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2306:Array;
      
      private var var_254:ToolbarBarMenuAnimator;
      
      private var var_391:ToolbarIconAnimator;
      
      private var var_558:Array;
      
      private var var_796:Array;
      
      private var var_795:String = "-1";
      
      private var var_2384:Boolean = true;
      
      private var var_977:Array;
      
      private var var_1151:Timer;
      
      private var var_1656:int;
      
      private var var_82:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_558 = new Array();
         var_796 = new Array();
         var_2306 = new Array();
         var_979 = new ToolbarIconBouncer(0.8,1);
         super();
         var_467 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_657 = param4;
         _events = param5;
         var_254 = param6;
         var_1151 = new Timer(40,40);
         var_1151.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_97 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_462,HabboWindowStyle.const_42,HabboWindowParam.const_44,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_97.background = true;
         var_97.mouseTreshold = 0;
         var_97.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_42,HabboWindowParam.const_42,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_97.addChild(_window);
         _window.addEventListener(WindowEvent.const_48,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1420[var_977.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_1656;
      }
      
      public function get iconId() : String
      {
         return var_657;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_923 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_34 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_97 == null || _window == null)
         {
            return;
         }
         var_97.width = _window.width;
         var_97.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_82 = (0 - 0) / 2;
            _y = var_923 + (0 - 0) / 2;
         }
         else
         {
            var_82 = var_923 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_97.x = var_82;
         var_97.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_97 != null)
         {
            var_97.dispose();
            var_97 = null;
         }
         var_558 = null;
         var_796 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_254 = null;
         var_391 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_558.indexOf(param1) < 0)
         {
            var_558.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_796.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_978)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_254)
               {
                  var_254.repositionWindow(var_657,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_62);
                  _loc4_.iconId = var_657;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_976;
                  }
               }
               break;
            case WindowMouseEvent.const_33:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_795;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_558.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_796[var_558.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_978 = param1;
         if(var_97 != null)
         {
            var_97.visible = var_978;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_97 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_97.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_97.toolTipCaption = "${toolbar.icon.tooltip." + var_1657.toLowerCase() + "}";
         }
         var_97.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_254 != null)
         {
            var_254.animateWindowIn(this,param1,param2,var_657,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_391 != null && _window != null)
         {
            var_391.update(_window);
            if(var_391.hasNextState())
            {
               state = var_391.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1420 = new Array();
         var_977 = new Array();
         var_1657 = param1.@id;
         var_1656 = int(param1.@window_offset_from_icon);
         var_1658 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_976 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_795 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_977.push(_loc5_.id);
               var_1420.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_976 == "-1")
                  {
                     var_976 = _loc5_.id;
                  }
                  if(var_795 == "-1")
                  {
                     var_795 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_34 = var_795;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_254 != null)
         {
            var_254.hideWindow(param1,param2,var_657,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_254 != null)
         {
            var_254.positionWindow(this,param1,param2,var_657,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_254 != null)
         {
            var_254.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_978;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_979 != null && _window != null)
         {
            var_979.update();
            _window.y = var_979.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_656 != null)
         {
            var_656.stop();
            var_656 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_978)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_391 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_82,_y,_bitmapData);
            if(false)
            {
               var_656 = new Timer(_loc1_.timer);
               var_656.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_656.start();
            }
            if(_loc1_.bounce)
            {
               var_979.reset(-7);
               var_1151.reset();
               var_1151.start();
            }
         }
         else
         {
            var_391 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1658 + var_467.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_34);
      }
      
      public function get window() : IWindow
      {
         return var_97;
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_796[var_558.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_467;
      }
   }
}
