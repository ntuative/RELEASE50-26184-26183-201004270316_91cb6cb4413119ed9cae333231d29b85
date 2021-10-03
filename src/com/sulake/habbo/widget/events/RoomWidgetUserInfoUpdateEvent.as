package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_203:String = "RWUIUE_PEER";
      
      public static const const_220:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1353:String = "BOT";
      
      public static const const_869:int = 2;
      
      public static const const_1364:int = 0;
      
      public static const const_906:int = 3;
       
      
      private var var_312:String = "";
      
      private var var_1266:String = "";
      
      private var var_1809:Boolean = false;
      
      private var var_1813:int = 0;
      
      private var var_1811:int = 0;
      
      private var var_1806:Boolean = false;
      
      private var var_1265:String = "";
      
      private var var_1815:Boolean = false;
      
      private var var_909:int = 0;
      
      private var var_1805:Boolean = true;
      
      private var var_998:int = 0;
      
      private var var_1816:Boolean = false;
      
      private var var_1336:Boolean = false;
      
      private var var_1808:Boolean = false;
      
      private var var_1812:int = 0;
      
      private var var_1817:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_260:Array;
      
      private var var_1338:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1804:int = 0;
      
      private var var_1807:Boolean = false;
      
      private var var_1814:int = 0;
      
      private var var_1810:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_260 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1811;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1811 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1809;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1805;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1805 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1815 = param1;
      }
      
      public function get motto() : String
      {
         return var_1266;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1816 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1336;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1266 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1807;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1810;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1336 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1817;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1812 = param1;
      }
      
      public function get badges() : Array
      {
         return var_260;
      }
      
      public function get amIController() : Boolean
      {
         return var_1806;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1806 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1807 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1814 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1810 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1265 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1815;
      }
      
      public function set figure(param1:String) : void
      {
         var_312 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1812;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1338;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1816;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_909 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1814;
      }
      
      public function get realName() : String
      {
         return var_1265;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function set webID(param1:int) : void
      {
         var_1804 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_260 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1808 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1817 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_909;
      }
      
      public function get webID() : int
      {
         return var_1804;
      }
      
      public function set groupId(param1:int) : void
      {
         var_998 = param1;
      }
      
      public function get xp() : int
      {
         return var_1813;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1809 = param1;
      }
      
      public function get groupId() : int
      {
         return var_998;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1808;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1338 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1813 = param1;
      }
   }
}
