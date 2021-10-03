package com.sulake.habbo.navigator.mainview
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ISelectableWindow;
   import com.sulake.core.window.components.ITabButtonWindow;
   import com.sulake.core.window.components.ITabContextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetOfficialRoomsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.GetPopularRoomTagsMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.LatestEventsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFavouriteRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyFriendsRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomHistorySearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.MyRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.PopularRoomsSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTagSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomTextSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWhereMyFriendsAreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RoomsWithHighestScoreSearchMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.room.session.QuitMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.IViewCtrl;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.Tab;
   import com.sulake.habbo.navigator.domain.Tabs;
   import com.sulake.habbo.navigator.events.HabboNavigatorTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class MainViewCtrl implements IUpdateReceiver, IDisposable
   {
      
      public static const const_574:int = 2;
      
      public static const const_876:int = 4;
      
      private static const const_505:int = 2;
      
      private static const const_792:int = 1;
      
      public static const const_1463:int = 3;
      
      private static const const_1135:int = 4;
      
      private static const SCROLLBAR_WIDTH:int = 22;
      
      public static const const_367:int = 1;
      
      private static const const_793:int = 3;
       
      
      private var var_2221:int = 0;
      
      private var _disposed:Boolean = false;
      
      private var var_1346:IRegionWindow;
      
      private var var_451:int;
      
      private var var_1345:Boolean = true;
      
      private var var_761:GuestRoomListCtrl;
      
      private var var_14:IFrameWindow;
      
      private var var_430:Timer;
      
      private var var_286:IWindowContainer;
      
      private var var_211:IWindowContainer;
      
      private var var_244:IWindowContainer;
      
      private var var_1349:IWindow;
      
      private var var_1347:Boolean;
      
      private var var_915:OfficialRoomListCtrl;
      
      private var var_20:IWindowContainer;
      
      private var var_760:PopularTagsListCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_1348:int = 0;
      
      private var var_246:ITabContextWindow;
      
      public function MainViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_760 = new PopularTagsListCtrl(_navigator);
         var_761 = new GuestRoomListCtrl(_navigator);
         var_915 = new OfficialRoomListCtrl(_navigator);
         var_430 = new Timer(300,1);
         var_430.addEventListener(TimerEvent.TIMER,onResizeTimer);
      }
      
      private function getSearchMsg(param1:int, param2:String) : IMessageComposer
      {
         if(param1 == Tabs.const_648)
         {
            return new MyFavouriteRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_563)
         {
            return new MyFriendsRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_730)
         {
            return new MyRoomHistorySearchMessageComposer();
         }
         if(param1 == Tabs.const_234)
         {
            return new MyRoomsSearchMessageComposer();
         }
         if(param1 == Tabs.const_342)
         {
            return new PopularRoomsSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_540)
         {
            return new RoomsWhereMyFriendsAreSearchMessageComposer();
         }
         if(param1 == Tabs.const_657)
         {
            return new RoomsWithHighestScoreSearchMessageComposer();
         }
         if(param1 == Tabs.const_339)
         {
            return new RoomTagSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_202)
         {
            return new RoomTextSearchMessageComposer(param2);
         }
         if(param1 == Tabs.const_422)
         {
            return new LatestEventsSearchMessageComposer(param2);
         }
         Logger.log("No message for searchType: " + param1);
         return null;
      }
      
      private function prepare() : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var_14 = IFrameWindow(_navigator.getXmlWindow("grs_main_window"));
         var_246 = ITabContextWindow(var_14.findChildByName("tab_context"));
         var_20 = IWindowContainer(var_14.findChildByName("tab_content"));
         var_244 = IWindowContainer(var_14.findChildByName("custom_content"));
         var_211 = IWindowContainer(var_14.findChildByName("list_content"));
         var_286 = IWindowContainer(var_14.findChildByName("custom_footer"));
         var_1349 = var_14.findChildByName("loading_text");
         var _loc1_:IWindow = var_14.findChildByTag("close");
         _loc1_.procedure = onWindowClose;
         var_1346 = IRegionWindow(var_14.findChildByName("to_hotel_view"));
         var_1346.procedure = onHotelView;
         refreshToHotelViewButton(false);
         var_14.procedure = onWindow;
         for each(_loc2_ in _navigator.tabs.tabs)
         {
            _loc3_ = var_246.getTabItemByID(_loc2_.id);
            _loc3_.setParamFlag(HabboWindowParam.const_44,true);
            _loc3_.procedure = onTabClick;
            _loc2_.button = _loc3_;
         }
         var_14.scaler.setParamFlag(HabboWindowParam.const_546,false);
         var_14.scaler.setParamFlag(HabboWindowParam.const_1390,true);
      }
      
      public function get mainWindow() : IFrameWindow
      {
         return var_14;
      }
      
      private function onTabClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_63)
         {
            return;
         }
         var _loc3_:int = param2.id;
         if(var_1347)
         {
            var_1347 = false;
            return;
         }
         var _loc4_:Tab = _navigator.tabs.getTab(_loc3_);
         _loc4_.sendSearchRequest();
         switch(_loc4_.id)
         {
            case Tabs.const_322:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS));
               break;
            case Tabs.const_265:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME));
               break;
            case Tabs.const_336:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL));
               break;
            case Tabs.const_259:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS));
               break;
            case Tabs.const_199:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH));
         }
      }
      
      private function refreshScrollbar(param1:IViewCtrl) : void
      {
         if(param1.content == null || !param1.content.visible)
         {
            return;
         }
         var _loc2_:IItemListWindow = IItemListWindow(param1.content.findChildByName("item_list"));
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         var _loc4_:* = _loc2_.scrollableRegion.height > _loc2_.height;
         if(_loc3_.visible)
         {
            if(_loc4_)
            {
               return;
            }
            _loc3_.visible = false;
            _loc2_.width += SCROLLBAR_WIDTH;
         }
         else
         {
            if(!_loc4_)
            {
               return;
            }
            _loc3_.visible = true;
            _loc2_.width -= SCROLLBAR_WIDTH;
         }
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         this.close();
      }
      
      private function sendTrackingEvent(param1:int) : void
      {
         switch(param1)
         {
            case Tabs.const_422:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS));
               break;
            case Tabs.const_648:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES));
               break;
            case Tabs.const_563:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS));
               break;
            case Tabs.const_730:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY));
               break;
            case Tabs.const_234:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS));
               break;
            case Tabs.const_729:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS));
               break;
            case Tabs.const_342:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS));
               break;
            case Tabs.const_540:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE));
               break;
            case Tabs.const_657:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE));
               break;
            case Tabs.const_339:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH));
               break;
            case Tabs.const_202:
               _navigator.events.dispatchEvent(new Event(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH));
         }
      }
      
      private function refreshList(param1:Boolean, param2:Boolean, param3:IViewCtrl, param4:String) : void
      {
         var _loc5_:* = null;
         if(!param2)
         {
            return;
         }
         if(param3.content == null)
         {
            _loc5_ = var_211.getChildByName(param4);
            param3.content = IWindowContainer(_loc5_);
         }
         if(param1)
         {
            param3.refresh();
         }
         param3.content.visible = true;
      }
      
      public function isOpen() : Boolean
      {
         return var_14 != null && false;
      }
      
      private function refreshListContent(param1:Boolean) : void
      {
         Util.hideChildren(var_211);
         refreshGuestRooms(param1,_navigator.data.guestRoomSearchArrived);
         refreshPopularTags(param1,_navigator.data.popularTagsArrived);
         refreshOfficialRooms(param1,_navigator.data.officialRoomsArrived);
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         refreshScrollbar(var_760);
         refreshScrollbar(var_761);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function stretchNewEntryIfNeeded(param1:IViewCtrl, param2:IWindowContainer) : void
      {
         var _loc3_:IWindow = param1.content.findChildByName("scroller");
         if(_loc3_.visible)
         {
            return;
         }
         param2.width += SCROLLBAR_WIDTH;
      }
      
      public function startSearch(param1:int, param2:int, param3:String = "-1", param4:int = 1) : void
      {
         var _loc5_:Tab = _navigator.tabs.getSelected();
         _navigator.tabs.setSelectedTab(param1);
         var _loc6_:Tab = _navigator.tabs.getSelected();
         ErrorReportStorage.addDebugData("StartSearch","Start search " + _loc5_.id + " => " + _loc6_.id);
         this.var_1345 = _loc5_ != _loc6_;
         if(_loc5_ != _loc6_)
         {
            _loc6_.tabPageDecorator.tabSelected();
         }
         _navigator.data.startLoading();
         if(param4 == const_367)
         {
            _navigator.send(getSearchMsg(param2,param3));
         }
         else if(param4 == const_574)
         {
            _navigator.send(new GetPopularRoomTagsMessageComposer());
         }
         else
         {
            _navigator.send(new GetOfficialRoomsMessageComposer());
         }
         if(!isOpen())
         {
            open();
            this.var_451 = const_505;
            this.var_211.blend = 0;
            if(this.var_244.visible)
            {
               this.var_244.blend = 0;
               this.var_286.blend = 0;
            }
         }
         else
         {
            this.var_451 = const_792;
         }
         this.var_1348 = 0;
         _navigator.registerUpdateReceiver(this,2);
         sendTrackingEvent(param2);
      }
      
      private function refreshCustomContent() : void
      {
         Util.hideChildren(var_244);
         var _loc1_:Tab = _navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshCustomContent(var_244);
         if(Util.hasVisibleChildren(var_244))
         {
            var_244.visible = true;
         }
         else
         {
            var_244.visible = false;
            var_244.blend = 1;
         }
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            _navigator = null;
            if(var_14)
            {
               var_14.dispose();
               var_14 = null;
            }
            if(var_20)
            {
               var_20.dispose();
               var_20 = null;
            }
            if(var_430)
            {
               var_430.removeEventListener(TimerEvent.TIMER,onResizeTimer);
               var_430.reset();
               var_430 = null;
            }
            if(var_760)
            {
               var_760.dispose();
               var_760 = null;
            }
            if(var_761)
            {
               var_761.dispose();
               var_761 = null;
            }
            if(var_915)
            {
               var_915.dispose();
               var_915 = null;
            }
         }
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_48 || param2 != var_14)
         {
            return;
         }
         if(!this.var_430.running)
         {
            this.var_430.reset();
            this.var_430.start();
         }
      }
      
      private function refreshOfficialRooms(param1:Boolean, param2:Boolean) : void
      {
         refreshList(param1,param2,var_915,"official_rooms");
      }
      
      private function refreshGuestRooms(param1:Boolean, param2:Boolean) : void
      {
         refreshList(param1,param2,var_761,"guest_rooms");
      }
      
      private function refreshTab() : void
      {
         var _loc1_:Tab = _navigator.tabs.getSelected();
         var _loc2_:ISelectableWindow = var_246.selector.getSelected();
         if(_loc1_.button != _loc2_)
         {
            var_1347 = true;
            var_246.selector.setSelected(_loc1_.button);
         }
      }
      
      private function refreshPopularTags(param1:Boolean, param2:Boolean) : void
      {
         refreshList(param1,param2,var_760,"popular_tags");
      }
      
      public function onNavigatorToolBarIconClick() : Boolean
      {
         if(isOpen())
         {
            close();
            return false;
         }
         var _loc1_:Tab = _navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.navigatorOpenedWhileInTab();
         return true;
      }
      
      public function open() : void
      {
         var _loc1_:Boolean = false;
         if(this.var_14 == null)
         {
            prepare();
            _loc1_ = true;
         }
         refresh();
         var_14.visible = true;
         var_14.activate();
         if(_loc1_)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_50,HabboToolbarIconEnum.NAVIGATOR,var_14));
         }
      }
      
      private function refreshFooter() : void
      {
         Util.hideChildren(var_286);
         var _loc1_:Tab = _navigator.tabs.getSelected();
         _loc1_.tabPageDecorator.refreshFooter(var_286);
         if(Util.hasVisibleChildren(var_286))
         {
            var_286.visible = true;
         }
         else
         {
            var_286.visible = false;
         }
      }
      
      public function reloadRoomList(param1:int) : Boolean
      {
         ErrorReportStorage.addDebugData("MainViewCtrl","Reloading RoomList");
         if(this.isOpen() && this._navigator.data.guestRoomSearchResults != null && this._navigator.data.guestRoomSearchResults.searchType == param1)
         {
            startSearch(_navigator.tabs.getSelected().id,param1,"");
            return true;
         }
         return false;
      }
      
      private function onHotelView(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            refreshToHotelViewButton(true);
         }
         else if(param1.type == WindowMouseEvent.const_33)
         {
            refreshToHotelViewButton(false);
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            _navigator.send(new QuitMessageComposer());
         }
      }
      
      public function refresh() : void
      {
         if(var_14 == null)
         {
            return;
         }
         refreshTab();
         refreshCustomContent();
         refreshListContent(true);
         refreshFooter();
         var_244.height = Util.getLowestPoint(var_244);
         var_286.height = Util.getLowestPoint(var_286);
         var _loc1_:int = 0;
         Util.moveChildrenToColumn(var_20,["custom_content","list_content"],var_244.y,8);
         var_211.height = var_211.height + _loc1_ - 0 - 0 + var_2221;
         Util.moveChildrenToColumn(var_20,["list_content","custom_footer"],var_211.y,8);
         var_2221 = var_286.height;
         onResizeTimer(null);
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:Number = NaN;
         if(this.var_211 == null)
         {
            return;
         }
         var _loc2_:Number = param1 / 150;
         if(var_451 == const_792)
         {
            _loc3_ = Math.min(1,Math.max(0,this.var_211.blend - _loc2_));
            this.var_211.blend = _loc3_;
            this.var_244.blend = !!var_1345 ? Number(_loc3_) : Number(1);
            this.var_286.blend = !!var_1345 ? Number(_loc3_) : Number(1);
            if(_loc3_ == 0)
            {
               var_451 = const_505;
            }
         }
         else if(var_451 == const_505)
         {
            if(var_1348 % 10 == 1)
            {
               var_1349.visible = true;
            }
            ++var_1348;
            if(!_navigator.data.isLoading())
            {
               var_451 = const_793;
            }
         }
         else if(var_451 == const_793)
         {
            this.refresh();
            var_451 = const_1135;
         }
         else
         {
            var_1349.visible = false;
            _loc3_ = Math.min(1,Math.max(0,this.var_211.blend + _loc2_));
            this.var_211.blend = _loc3_;
            this.var_244.blend = !!var_1345 ? Number(_loc3_) : Number(1);
            this.var_286.blend = !!var_1345 ? Number(_loc3_) : Number(1);
            if(false)
            {
               _navigator.removeUpdateReceiver(this);
            }
         }
      }
      
      private function refreshToHotelViewButton(param1:Boolean) : void
      {
         _navigator.refreshButton(var_1346,"icon_hotelview",!param1,null,0);
         _navigator.refreshButton(var_1346,"icon_hotelview_reactive",param1,null,0);
      }
      
      public function close() : void
      {
         if(var_14 != null)
         {
            var_14.visible = false;
         }
      }
   }
}
