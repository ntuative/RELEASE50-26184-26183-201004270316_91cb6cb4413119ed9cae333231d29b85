package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_674:String;
      
      private var var_1440:Array;
      
      private var var_1441:Boolean;
      
      private var _roomId:int;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         var_1440 = new Array();
         super();
         var_1441 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_674 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1440.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + var_1441 + ", " + _roomId + ", " + var_674 + ", " + chatlog.length);
      }
      
      public function get isPublic() : Boolean
      {
         return var_1441;
      }
      
      public function get roomName() : String
      {
         return var_674;
      }
      
      public function get chatlog() : Array
      {
         return var_1440;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
