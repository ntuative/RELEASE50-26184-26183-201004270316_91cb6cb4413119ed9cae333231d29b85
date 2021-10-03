package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_579:String = "me_menu_settings_view";
      
      public static const const_724:String = "me_menu_effects_view";
      
      public static const const_136:String = "me_menu_top_view";
      
      public static const const_1391:String = "me_menu_rooms_view";
      
      public static const const_853:String = "me_menu_dance_moves_view";
      
      public static const const_329:String = "me_menu_my_clothes_view";
       
      
      private var var_1752:Boolean = false;
      
      private var var_434:Boolean = false;
      
      private var var_1443:int = 0;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1442:int = 0;
      
      private var var_1751:int = 0;
      
      private var var_1749:Boolean = false;
      
      private var var_258:Boolean = false;
      
      private var var_1750:int = 0;
      
      private var var_1754:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_566:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1170:int = 0;
      
      private var var_1753:Boolean = false;
      
      private var var_989:Point;
      
      private var var_37:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_989 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_1753 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_136);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_586,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_654,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_538,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_610,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_294,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_643,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_205,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_223,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_626,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_220,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_318,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_107,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_437,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_163,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!var_434)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_566;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_258)
         {
            return;
         }
         if(var_37.window.name == const_579)
         {
            (var_37 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1170 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1442 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1442.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_258 && var_37.window.name == const_329))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_698);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_586,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_654,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_538,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_610,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_294,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_205,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_223,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_626,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_643,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_220,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_318,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_437,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_107,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_163,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_37 != null)
         {
            var_37.dispose();
            var_37 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_1752;
      }
      
      public function get creditBalance() : int
      {
         return var_1442;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1754 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_437:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_258 + " view: " + var_37.window.name);
               if(var_258 != true || var_37.window.name != const_136)
               {
                  return;
               }
               (var_37 as MeMenuMainView).setIconAssets("clothes_icon",const_136,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_107:
               hide();
         }
      }
      
      public function get isDancing() : Boolean
      {
         return var_1749;
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1754 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_1751;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_566 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_566 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != var_1170;
         var_1170 = param1.daysLeft;
         var_1751 = param1.periodsLeft;
         var_1750 = param1.pastPeriods;
         var_1752 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != var_1443);
         var_1443 = param1.clubLevel;
         if(_loc2_)
         {
            if(var_37 != null)
            {
               changeView(var_37.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1749 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_37 != null && var_37.window.name != const_329)
         {
            hide();
         }
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1381,HabboWindowStyle.const_870,HabboWindowParam.const_42,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_566 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_566 = true;
            }
         }
         if(var_37 != null && var_37.window.name == const_724)
         {
            (var_37 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1750;
      }
      
      public function get habboClubDays() : int
      {
         return var_1170;
      }
      
      public function updateSize() : void
      {
         if(var_37 != null)
         {
            var_989.x = var_37.window.width + 10;
            var_989.y = var_37.window.height;
            var_37.window.x = 5;
            var_37.window.y = 0;
            _mainContainer.width = var_989.x;
            _mainContainer.height = var_989.y;
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_258 = !var_258;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_258 = false;
               break;
            default:
               return;
         }
         if(var_258)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_607);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_37 != null)
         {
            _mainContainer.removeChild(var_37.window);
            var_37.dispose();
            var_37 = null;
         }
         var_258 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_37 != null && var_37.window.name == const_329)
         {
            changeView(const_136);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_1753;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_136:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_724:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_853:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_329:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1391:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_579:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_37 != null)
            {
               _mainContainer.removeChild(var_37.window);
               var_37.dispose();
               var_37 = null;
            }
            var_37 = _loc2_;
            var_37.init(this,param1);
         }
         updateSize();
      }
      
      public function get habboClubLevel() : int
      {
         return var_1443;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_136);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_641);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_258 = true;
      }
   }
}
