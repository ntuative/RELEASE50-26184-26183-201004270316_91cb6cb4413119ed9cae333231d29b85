package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1417:int = 10;
       
      
      private var var_1430:NavigatorSettingsMessageParser;
      
      private var var_1162:int;
      
      private var var_1728:int;
      
      private var var_1726:Boolean;
      
      private var var_984:Array;
      
      private var var_800:Dictionary;
      
      private var var_985:Array;
      
      private var var_2307:int;
      
      private var var_1730:int;
      
      private var var_1727:int;
      
      private var var_1725:int;
      
      private var var_564:PublicRoomShortData;
      
      private var var_398:RoomEventData;
      
      private var var_125:MsgWithRequestId;
      
      private var var_1729:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1731:Boolean;
      
      private var var_192:GuestRoomData;
      
      private var var_666:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_984 = new Array();
         var_985 = new Array();
         var_800 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1728;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1731;
      }
      
      public function startLoading() : void
      {
         this.var_666 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1731 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_398 != null)
         {
            var_398.dispose();
         }
         var_398 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_125 != null && var_125 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_125 != null && var_125 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_125 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_192;
      }
      
      public function get allCategories() : Array
      {
         return var_984;
      }
      
      public function onRoomExit() : void
      {
         if(var_398 != null)
         {
            var_398.dispose();
            var_398 = null;
         }
         if(var_564 != null)
         {
            var_564.dispose();
            var_564 = null;
         }
         if(var_192 != null)
         {
            var_192.dispose();
            var_192 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_125 = param1;
         var_666 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1430;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_125 = param1;
         var_666 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_564 = null;
         var_192 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_564 = param1.publicSpace;
            var_398 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2307 = param1.limit;
         this.var_1162 = param1.favouriteRoomIds.length;
         this.var_800 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_800[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_125 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_564;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1726;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_125 = param1;
         var_666 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1727 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_192 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_666;
      }
      
      public function get visibleCategories() : Array
      {
         return var_985;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_984 = param1;
         var_985 = new Array();
         for each(_loc2_ in var_984)
         {
            if(_loc2_.visible)
            {
               var_985.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1730;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1725;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1430 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_125 == null)
         {
            return;
         }
         var_125.dispose();
         var_125 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_398;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_800[param1] = !!param2 ? "yes" : null;
         var_1162 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_125 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1727;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_125 != null && var_125 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1726 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1730 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1729 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_192 != null)
         {
            var_192.dispose();
         }
         var_192 = param1;
      }
      
      public function method_11() : Boolean
      {
         if(var_192 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1430.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1162 >= var_2307;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1725 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1729;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_192 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1728 = param1;
      }
   }
}
