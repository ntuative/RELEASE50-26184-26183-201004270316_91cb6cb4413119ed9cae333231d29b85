package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFlatControlUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1970:String;
      
      private var var_1969:Boolean = false;
      
      public function RoomObjectAvatarFlatControlUpdateMessage(param1:String)
      {
         super();
         var_1970 = param1;
         if(param1 != null && param1.indexOf("useradmin") != -1)
         {
            var_1969 = true;
         }
      }
      
      public function get rawData() : String
      {
         return var_1970;
      }
      
      public function get isAdmin() : Boolean
      {
         return var_1969;
      }
   }
}
