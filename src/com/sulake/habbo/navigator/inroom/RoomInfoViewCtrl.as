package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_653:IWindowContainer;
      
      private var var_974:ITextWindow;
      
      private var var_190:RoomSettingsCtrl;
      
      private var var_1149:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1144:ITextWindow;
      
      private var var_338:IWindowContainer;
      
      private var var_1653:IWindowContainer;
      
      private var var_1654:ITextWindow;
      
      private var var_792:IWindowContainer;
      
      private var var_1417:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_674:ITextWindow;
      
      private var var_1416:IWindowContainer;
      
      private var var_1148:IWindowContainer;
      
      private var var_790:ITextWindow;
      
      private var var_972:ITextFieldWindow;
      
      private var var_298:IWindowContainer;
      
      private var var_793:ITextWindow;
      
      private var var_1414:IButtonWindow;
      
      private var var_973:ITextWindow;
      
      private var var_2305:int;
      
      private var var_1145:IContainerButtonWindow;
      
      private var var_791:IWindowContainer;
      
      private var var_1147:ITextWindow;
      
      private var var_1146:IContainerButtonWindow;
      
      private var var_1415:ITextWindow;
      
      private var var_1418:IButtonWindow;
      
      private var var_823:TagRenderer;
      
      private var var_1652:ITextWindow;
      
      private var var_337:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_654:ITextWindow;
      
      private var var_253:RoomThumbnailCtrl;
      
      private var var_1143:IContainerButtonWindow;
      
      private var var_1651:IWindowContainer;
      
      private var var_252:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_337 = new RoomEventViewCtrl(_navigator);
         var_190 = new RoomSettingsCtrl(_navigator,this,true);
         var_253 = new RoomThumbnailCtrl(_navigator);
         var_823 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_190);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_190.active = true;
         this.var_337.active = false;
         this.var_253.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1417.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1418.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1416.visible = Util.hasVisibleChildren(var_1416);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_674.text = param1.roomName;
         var_674.height = NaN;
         _ownerName.text = param1.ownerName;
         var_790.text = param1.description;
         var_823.refreshTags(var_338,param1.tags);
         var_790.visible = false;
         if(param1.description != "")
         {
            var_790.height = NaN;
            var_790.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_338,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_338,"thumb_down",_loc3_,onThumbDown,0);
         var_1654.visible = _loc3_;
         var_793.visible = !_loc3_;
         var_1415.visible = !_loc3_;
         var_1415.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_338,"home",param2,null,0);
         _navigator.refreshButton(var_338,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_338,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_674.y,0);
         var_338.visible = true;
         var_338.height = Util.getLowestPoint(var_338);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_410,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1414.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1149.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1143.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1145.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1146.visible = _navigator.data.canEditRoomSettings && param1;
         var_1148.visible = Util.hasVisibleChildren(var_1148);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_337.active = false;
         this.var_190.active = false;
         this.var_253.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_50,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_337.active = false;
         this.var_190.active = false;
         this.var_253.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_50,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_410,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_298);
         var_298.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_190.refresh(var_298);
         this.var_253.refresh(var_298);
         Util.moveChildrenToColumn(var_298,["room_details","room_buttons"],0,2);
         var_298.height = Util.getLowestPoint(var_298);
         var_298.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_972.setSelection(0,var_972.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_252);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_337.refresh(var_252);
         if(Util.hasVisibleChildren(var_252) && !this.var_253.active)
         {
            Util.moveChildrenToColumn(var_252,["event_details","event_buttons"],0,2);
            var_252.height = Util.getLowestPoint(var_252);
            var_252.visible = true;
         }
         else
         {
            var_252.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_337.active = true;
         this.var_190.active = false;
         this.var_253.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_974.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_974.height = NaN;
         var_1144.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1144.height = NaN;
         Util.moveChildrenToColumn(var_653,["public_space_name","public_space_desc"],var_974.y,0);
         var_653.visible = true;
         var_653.height = Math.max(86,Util.getLowestPoint(var_653));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_791.visible = true;
            var_972.text = this.getEmbedData();
         }
         else
         {
            var_791.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_190.load(param1);
         this.var_190.active = true;
         this.var_337.active = false;
         this.var_253.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_190.active = false;
         this.var_337.active = false;
         this.var_253.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_75,false);
         _window.setParamFlag(HabboWindowParam.const_1315,true);
         _window.visible = false;
         var_298 = IWindowContainer(find("room_info"));
         var_338 = IWindowContainer(find("room_details"));
         var_653 = IWindowContainer(find("public_space_details"));
         var_1651 = IWindowContainer(find("owner_name_cont"));
         var_1653 = IWindowContainer(find("rating_cont"));
         var_1148 = IWindowContainer(find("room_buttons"));
         var_674 = ITextWindow(find("room_name"));
         var_974 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_790 = ITextWindow(find("room_desc"));
         var_1144 = ITextWindow(find("public_space_desc"));
         var_973 = ITextWindow(find("owner_caption"));
         var_793 = ITextWindow(find("rating_caption"));
         var_1654 = ITextWindow(find("rate_caption"));
         var_1415 = ITextWindow(find("rating_txt"));
         var_252 = IWindowContainer(find("event_info"));
         var_792 = IWindowContainer(find("event_details"));
         var_1416 = IWindowContainer(find("event_buttons"));
         var_1652 = ITextWindow(find("event_name"));
         var_654 = ITextWindow(find("event_desc"));
         var_1149 = IContainerButtonWindow(find("add_favourite_button"));
         var_1143 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1145 = IContainerButtonWindow(find("make_home_button"));
         var_1146 = IContainerButtonWindow(find("unmake_home_button"));
         var_1414 = IButtonWindow(find("room_settings_button"));
         var_1417 = IButtonWindow(find("create_event_button"));
         var_1418 = IButtonWindow(find("edit_event_button"));
         var_791 = IWindowContainer(find("embed_info"));
         var_1147 = ITextWindow(find("embed_info_txt"));
         var_972 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1149,onAddFavouriteClick);
         Util.setProcDirectly(var_1143,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1414,onRoomSettingsClick);
         Util.setProcDirectly(var_1145,onMakeHomeClick);
         Util.setProcDirectly(var_1146,onUnmakeHomeClick);
         Util.setProcDirectly(var_1417,onEventSettingsClick);
         Util.setProcDirectly(var_1418,onEventSettingsClick);
         Util.setProcDirectly(var_972,onEmbedSrcClick);
         _navigator.refreshButton(var_1149,"favourite",true,null,0);
         _navigator.refreshButton(var_1143,"favourite",true,null,0);
         _navigator.refreshButton(var_1145,"home",true,null,0);
         _navigator.refreshButton(var_1146,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_298,onHover);
         Util.setProcDirectly(var_252,onHover);
         var_973.width = var_973.textWidth;
         Util.moveChildrenToRow(var_1651,["owner_caption","owner_name"],var_973.x,var_973.y,3);
         var_793.width = var_793.textWidth;
         Util.moveChildrenToRow(var_1653,["rating_caption","rating_txt"],var_793.x,var_793.y,3);
         var_1147.height = NaN;
         Util.moveChildrenToColumn(var_791,["embed_info_txt","embed_src_txt"],var_1147.y,2);
         var_791.height = Util.getLowestPoint(var_791) + 5;
         var_2305 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1652.text = param1.eventName;
         var_654.text = param1.eventDescription;
         var_823.refreshTags(var_792,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_654.visible = false;
         if(param1.eventDescription != "")
         {
            var_654.height = NaN;
            var_654.y = Util.getLowestPoint(var_792) + 2;
            var_654.visible = true;
         }
         var_792.visible = true;
         var_792.height = Util.getLowestPoint(var_792);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_951,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
