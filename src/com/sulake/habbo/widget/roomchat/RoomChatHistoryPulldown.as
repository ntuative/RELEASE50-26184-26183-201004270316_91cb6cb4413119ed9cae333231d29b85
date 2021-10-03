package com.sulake.habbo.widget.roomchat
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomChatHistoryPulldown
   {
      
      public static const const_439:int = 2;
      
      public static const const_327:int = 1;
      
      public static const const_208:int = 0;
      
      public static const const_796:int = 3;
      
      private static const const_773:int = 150;
      
      private static const const_772:int = 250;
      
      public static const const_78:int = 39;
       
      
      private var var_1514:BitmapData;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1513:BitmapData;
      
      private var _window:IWindowContainer;
      
      private var var_2001:int = 0;
      
      private var var_38:IWindowContainer;
      
      private var var_97:IRegionWindow;
      
      private var var_2000:int = 30;
      
      private var var_34:int = -1;
      
      private var var_2002:BitmapData;
      
      private var _widget:RoomChatWidget;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_2004:BitmapData;
      
      private var var_71:IBitmapWrapperWindow;
      
      private var var_2005:BitmapData;
      
      private var var_2003:BitmapData;
      
      private var var_1512:BitmapData;
      
      public function RoomChatHistoryPulldown(param1:RoomChatWidget, param2:IHabboWindowManager, param3:IWindowContainer, param4:IAssetLibrary)
      {
         super();
         _widget = param1;
         _windowManager = param2;
         _assetLibrary = param4;
         var_38 = param3;
         var_2003 = (_assetLibrary.getAssetByName("chat_grapbar_bg") as BitmapDataAsset).content as BitmapData;
         var_1513 = (_assetLibrary.getAssetByName("chat_grapbar_grip") as BitmapDataAsset).content as BitmapData;
         var_2005 = (_assetLibrary.getAssetByName("chat_grapbar_handle") as BitmapDataAsset).content as BitmapData;
         var_1512 = (_assetLibrary.getAssetByName("chat_grapbar_x") as BitmapDataAsset).content as BitmapData;
         var_1514 = (_assetLibrary.getAssetByName("chat_grapbar_x_hi") as BitmapDataAsset).content as BitmapData;
         var_2002 = (_assetLibrary.getAssetByName("chat_grapbar_x_pr") as BitmapDataAsset).content as BitmapData;
         var_2004 = (_assetLibrary.getAssetByName("chat_history_bg") as BitmapDataAsset).content as BitmapData;
         var_71 = _windowManager.createWindow("chat_history_bg","",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_43,HabboWindowParam.const_75,new Rectangle(0,0,param3.width,param3.height - const_78),null,0,0) as IBitmapWrapperWindow;
         var_38.addChild(var_71);
         _window = _windowManager.createWindow("chat_pulldown","",HabboWindowType.const_61,HabboWindowStyle.const_43,HabboWindowParam.const_44,new Rectangle(0,0 - const_78,param3.width,const_78),null,0) as IWindowContainer;
         var_38.addChild(_window);
         var_97 = _windowManager.createWindow("REGIONchat_pulldown","",WindowType.const_462,HabboWindowStyle.const_42,0 | 0 | 0 | 0,new Rectangle(0,0,param3.width,param3.height - const_78),null,0) as IRegionWindow;
         if(var_97 != null)
         {
            var_97.background = true;
            var_97.mouseTreshold = 0;
            var_97.addEventListener(WindowMouseEvent.const_54,onPulldownMouseDown);
            var_38.addChild(var_97);
            var_97.toolTipCaption = "${chat.history.drag.tooltip}";
            var_97.toolTipDelay = 250;
         }
         var _loc5_:XmlAsset = param4.getAssetByName("chat_history_pulldown") as XmlAsset;
         _window.buildFromXML(_loc5_.content as XML);
         _window.addEventListener(WindowMouseEvent.const_54,onPulldownMouseDown);
         var _loc6_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc6_ != null)
         {
            _loc6_.mouseTreshold = 0;
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onCloseButtonClicked);
            _loc6_.addEventListener(WindowMouseEvent.const_98,onCloseButtonMouseUp);
            _loc6_.addEventListener(WindowMouseEvent.const_54,onCloseButtonMouseDown);
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onCloseButtonMouseOver);
            _loc6_.addEventListener(WindowMouseEvent.const_33,onCloseButtonMouseOut);
         }
         _window.background = true;
         _window.color = 0;
         _window.mouseTreshold = 0;
         this.state = const_208;
         buildWindowGraphics();
      }
      
      private function onCloseButtonMouseDown(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_2002.clone();
         }
      }
      
      private function onCloseButtonMouseUp(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1514.clone();
         }
      }
      
      public function update(param1:uint) : void
      {
         switch(state)
         {
            case const_439:
               var_71.blend += param1 / const_772;
               _window.blend += param1 / const_772;
               if(false)
               {
                  state = const_327;
               }
               break;
            case const_796:
               var_71.blend = 0 - param1 / const_773;
               _window.blend = 0 - param1 / const_773;
               if(true)
               {
                  state = const_208;
               }
         }
      }
      
      private function onCloseButtonClicked(param1:WindowMouseEvent) : void
      {
         if(_widget != null)
         {
            _widget.onPulldownCloseButtonClicked(param1);
         }
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      private function onCloseButtonMouseOver(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1514.clone();
         }
      }
      
      public function dispose() : void
      {
         if(var_97 != null)
         {
            var_97.dispose();
            var_97 = null;
         }
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_71 != null)
         {
            var_71.dispose();
            var_71 = null;
         }
      }
      
      private function onPulldownMouseDown(param1:WindowMouseEvent) : void
      {
         if(_widget != null)
         {
            _widget.onPulldownMouseDown(param1);
         }
      }
      
      public function set state(param1:int) : void
      {
         if(param1 == var_34)
         {
            return;
         }
         switch(param1)
         {
            case const_327:
               if(var_34 == const_208)
               {
                  this.state = const_439;
               }
               else
               {
                  if(_window == null || var_71 == null)
                  {
                     return;
                  }
                  _window.visible = true;
                  var_71.visible = true;
                  var_97.visible = true;
                  var_34 = param1;
               }
               break;
            case const_208:
               if(_window == null || var_71 == null)
               {
                  return;
               }
               _window.visible = false;
               var_71.visible = false;
               var_97.visible = false;
               var_34 = param1;
               break;
            case const_439:
               if(_window == null || var_71 == null)
               {
                  return;
               }
               _window.blend = 0;
               var_71.blend = 0;
               _window.visible = true;
               var_71.visible = true;
               var_34 = param1;
               break;
            case const_796:
               if(_window == null || var_71 == null)
               {
                  return;
               }
               _window.blend = 1;
               var_71.blend = 1;
               var_34 = param1;
               break;
         }
      }
      
      private function tileBitmapHorz(param1:BitmapData, param2:BitmapData) : void
      {
         var _loc3_:int = param2.width / param1.width;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_ + 1)
         {
            param2.copyPixels(param1,param1.rect,new Point(_loc4_ * param1.width,0));
            _loc4_++;
         }
      }
      
      public function containerResized(param1:Rectangle) : void
      {
         if(_window != null)
         {
            _window.x = 0;
            _window.y = 0 - const_78;
            _window.width = var_38.width;
         }
         if(var_97 != null)
         {
            var_97.x = 0;
            var_97.y = 0 - const_78;
            var_97.width = 0 - var_2000;
         }
         if(var_71 != null)
         {
            var_71.rectangle = var_38.rectangle;
            var_71.height = 0 - const_78;
         }
         buildWindowGraphics();
      }
      
      private function onCloseButtonMouseOut(param1:WindowMouseEvent) : void
      {
         if(_window == null)
         {
            return;
         }
         if(true)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = var_1512.clone();
         }
      }
      
      private function buildWindowGraphics() : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(_window == null)
         {
            return;
         }
         if(var_2001 == _window.width)
         {
            return;
         }
         var_2001 = _window.width;
         var _loc1_:IBitmapWrapperWindow = _window.findChildByName("grapBarBg") as IBitmapWrapperWindow;
         var _loc2_:IBitmapWrapperWindow = _window.findChildByName("GrapBarX") as IBitmapWrapperWindow;
         var _loc3_:IBitmapWrapperWindow = _window.findChildByName("grapBarGripL") as IBitmapWrapperWindow;
         var _loc4_:IBitmapWrapperWindow = _window.findChildByName("grapBarGripR") as IBitmapWrapperWindow;
         var _loc5_:IBitmapWrapperWindow = _window.findChildByName("grapBarHandle") as IBitmapWrapperWindow;
         if(_loc2_ != null && _loc5_ != null)
         {
            _loc5_.bitmap = var_2005.clone();
            _loc2_.bitmap = var_1512.clone();
            var_2000 = 0 - _loc2_.x;
         }
         _loc3_.width = _loc5_.x - 5;
         _loc3_.x = 0;
         _loc4_.x = _loc5_.x + _loc5_.width + 5;
         _loc4_.width = _loc2_.x - 5 - _loc4_.x;
         if(_loc3_.width < 0)
         {
            _loc3_.width = 0;
         }
         if(_loc4_.width < 0)
         {
            _loc4_.width = 0;
         }
         if(_loc1_ != null && _loc3_ != null && _loc4_ != null)
         {
            if(_loc1_.width > 0 && _loc1_.height > 0)
            {
               _loc7_ = new BitmapData(_loc1_.width,_loc1_.height);
               tileBitmapHorz(var_2003.clone(),_loc7_);
               _loc1_.bitmap = _loc7_;
            }
            if(_loc3_.width > 0 && _loc3_.height > 0)
            {
               _loc8_ = new BitmapData(_loc3_.width,_loc3_.height);
               tileBitmapHorz(var_1513.clone(),_loc8_);
               _loc3_.bitmap = _loc8_;
            }
            if(_loc4_.width > 0 && _loc4_.height > 0)
            {
               _loc9_ = new BitmapData(_loc4_.width,_loc4_.height);
               tileBitmapHorz(var_1513.clone(),_loc9_);
               _loc4_.bitmap = _loc9_;
            }
         }
         if(var_71 == null)
         {
            return;
         }
         var_71.bitmap = var_2004.clone();
      }
   }
}
