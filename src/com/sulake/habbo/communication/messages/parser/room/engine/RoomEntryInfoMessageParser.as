package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1908:int;
      
      private var var_422:Boolean;
      
      private var var_1907:Boolean;
      
      private var var_834:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1907 = param1.readBoolean();
         if(var_1907)
         {
            var_1908 = param1.readInteger();
            var_422 = param1.readBoolean();
         }
         else
         {
            var_834 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_834 != null)
         {
            var_834.dispose();
            var_834 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1908;
      }
      
      public function get owner() : Boolean
      {
         return var_422;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1907;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_834;
      }
   }
}
