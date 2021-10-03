package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_111:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1755:int;
      
      private var var_423:int;
      
      private var var_759:RoomData;
      
      private var var_1688:int;
      
      private var _ownerName:String;
      
      private var var_2115:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_423 = param1.readInteger();
         var_1755 = param1.readInteger();
         var_2115 = param1.readBoolean();
         var_1688 = param1.readInteger();
         _ownerName = param1.readString();
         var_111 = new RoomData(param1);
         var_759 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1755;
      }
      
      public function get event() : RoomData
      {
         return var_759;
      }
      
      public function get room() : RoomData
      {
         return var_111;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_111 != null)
         {
            var_111.dispose();
            var_111 = null;
         }
         if(var_759 != null)
         {
            var_759.dispose();
            var_759 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_423;
      }
      
      public function get ownerId() : int
      {
         return var_1688;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2115;
      }
   }
}
