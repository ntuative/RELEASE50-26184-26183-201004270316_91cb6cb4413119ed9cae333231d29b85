package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1755:int;
      
      private var var_1847:String;
      
      private var var_1852:int;
      
      private var var_1848:int;
      
      private var var_759:Boolean;
      
      private var var_1849:Boolean;
      
      private var var_423:int;
      
      private var var_1169:String;
      
      private var var_1845:int;
      
      private var var_1261:int;
      
      private var _ownerName:String;
      
      private var var_674:String;
      
      private var var_1846:int;
      
      private var var_1850:RoomThumbnailData;
      
      private var var_1851:Boolean;
      
      private var var_642:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_642 = new Array();
         super();
         var_423 = param1.readInteger();
         var_759 = param1.readBoolean();
         var_674 = param1.readString();
         _ownerName = param1.readString();
         var_1845 = param1.readInteger();
         var_1755 = param1.readInteger();
         var_1846 = param1.readInteger();
         var_1169 = param1.readString();
         var_1852 = param1.readInteger();
         var_1851 = param1.readBoolean();
         var_1848 = param1.readInteger();
         var_1261 = param1.readInteger();
         var_1847 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_642.push(_loc4_);
            _loc3_++;
         }
         var_1850 = new RoomThumbnailData(param1);
         var_1849 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1846;
      }
      
      public function get roomName() : String
      {
         return var_674;
      }
      
      public function get userCount() : int
      {
         return var_1755;
      }
      
      public function get score() : int
      {
         return var_1848;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1847;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1851;
      }
      
      public function get tags() : Array
      {
         return var_642;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1849;
      }
      
      public function get event() : Boolean
      {
         return var_759;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_642 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1261;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1852;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1850;
      }
      
      public function get doorMode() : int
      {
         return var_1845;
      }
      
      public function get flatId() : int
      {
         return var_423;
      }
      
      public function get description() : String
      {
         return var_1169;
      }
   }
}
