package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1573:int = 9;
      
      public static const const_1505:int = 4;
      
      public static const const_1515:int = 1;
      
      public static const const_1218:int = 10;
      
      public static const const_1494:int = 2;
      
      public static const const_1289:int = 7;
      
      public static const const_1275:int = 11;
      
      public static const const_1498:int = 3;
      
      public static const const_1163:int = 8;
      
      public static const const_1203:int = 5;
      
      public static const const_1616:int = 6;
      
      public static const const_1308:int = 12;
       
      
      private var var_2138:String;
      
      private var _roomId:int;
      
      private var var_1212:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2138;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1212 = param1.readInteger();
         var_2138 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1212;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
