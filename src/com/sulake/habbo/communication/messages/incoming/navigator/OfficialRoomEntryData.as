package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1328:int = 4;
      
      public static const const_518:int = 3;
      
      public static const const_573:int = 2;
      
      public static const const_941:int = 1;
       
      
      private var var_2181:String;
      
      private var _disposed:Boolean;
      
      private var var_1755:int;
      
      private var var_2184:Boolean;
      
      private var var_867:String;
      
      private var var_900:PublicRoomData;
      
      private var var_2183:int;
      
      private var _index:int;
      
      private var var_2185:String;
      
      private var _type:int;
      
      private var var_1625:String;
      
      private var var_899:GuestRoomData;
      
      private var var_2182:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2181 = param1.readString();
         var_2182 = param1.readString();
         var_2184 = param1.readInteger() == 1;
         var_2185 = param1.readString();
         var_867 = param1.readString();
         var_2183 = param1.readInteger();
         var_1755 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_941)
         {
            var_1625 = param1.readString();
         }
         else if(_type == const_518)
         {
            var_900 = new PublicRoomData(param1);
         }
         else if(_type == const_573)
         {
            var_899 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2183;
      }
      
      public function get popupCaption() : String
      {
         return var_2181;
      }
      
      public function get userCount() : int
      {
         return var_1755;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2184;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_941)
         {
            return 0;
         }
         if(this.type == const_573)
         {
            return this.var_899.maxUserCount;
         }
         if(this.type == const_518)
         {
            return this.var_900.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2182;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_899 != null)
         {
            this.var_899.dispose();
            this.var_899 = null;
         }
         if(this.var_900 != null)
         {
            this.var_900.dispose();
            this.var_900 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_899;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2185;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_900;
      }
      
      public function get picRef() : String
      {
         return var_867;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1625;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
