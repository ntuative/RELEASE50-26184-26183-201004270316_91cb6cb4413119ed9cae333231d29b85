package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_146:int = 1;
      
      public static const const_1271:int = 3;
      
      public static const const_434:int = 2;
       
      
      private var var_1960:int;
      
      private var var_1647:int;
      
      private var var_1968:int;
      
      private var var_1642:int;
      
      private var var_34:int;
      
      private var var_423:int;
      
      private var var_1126:int;
      
      private var var_1963:int;
      
      private var var_1104:int;
      
      private var _roomResources:String;
      
      private var var_1966:int;
      
      private var var_1961:int;
      
      private var var_1967:String;
      
      private var var_1962:String;
      
      private var var_1965:int = 0;
      
      private var var_1353:String;
      
      private var _message:String;
      
      private var var_1901:int;
      
      private var var_1959:String;
      
      private var var_1261:int;
      
      private var var_674:String;
      
      private var var_1964:String;
      
      private var var_1462:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1104 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1965 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1961;
      }
      
      public function set roomName(param1:String) : void
      {
         var_674 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1966 = param1;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_674;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1642 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_34 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1647;
      }
      
      public function get priority() : int
      {
         return var_1960 + var_1965;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1963 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1962;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1462) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1261;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1961 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1126;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1967 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1966;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1642;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1964 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1353 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1963;
      }
      
      public function set priority(param1:int) : void
      {
         var_1960 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1647 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1967;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1968 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1962 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1901 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1353;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1126 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1968;
      }
      
      public function set flatId(param1:int) : void
      {
         var_423 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1261 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1462 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1901;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1959 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1462;
      }
      
      public function get reportedUserId() : int
      {
         return var_1104;
      }
      
      public function get flatId() : int
      {
         return var_423;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1964;
      }
      
      public function get reporterUserName() : String
      {
         return var_1959;
      }
   }
}
