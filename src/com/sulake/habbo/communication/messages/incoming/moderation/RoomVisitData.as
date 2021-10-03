package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_674:String;
      
      private var var_1861:int;
      
      private var var_1441:Boolean;
      
      private var _roomId:int;
      
      private var var_1860:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1441 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_674 = param1.readString();
         var_1860 = param1.readInteger();
         var_1861 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1441;
      }
      
      public function get roomName() : String
      {
         return var_674;
      }
      
      public function get enterMinute() : int
      {
         return var_1861;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1860;
      }
   }
}
