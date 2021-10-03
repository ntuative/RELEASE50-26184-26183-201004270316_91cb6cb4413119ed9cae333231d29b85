package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1184:int = 2;
      
      public static const const_1512:int = 1;
       
      
      private var var_2230:int;
      
      private var var_2228:int;
      
      private var var_1826:Boolean;
      
      private var var_2232:int;
      
      private var var_1260:String;
      
      private var var_2229:Boolean;
      
      private var var_1824:int;
      
      private var var_2231:int;
      
      private var var_1825:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2228;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1826;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2231;
      }
      
      public function get memberPeriods() : int
      {
         return var_2232;
      }
      
      public function get productName() : String
      {
         return var_1260;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2229;
      }
      
      public function get responseType() : int
      {
         return var_2230;
      }
      
      public function get pastClubDays() : int
      {
         return var_1825;
      }
      
      public function get pastVipDays() : int
      {
         return var_1824;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1260 = param1.readString();
         var_2228 = param1.readInteger();
         var_2232 = param1.readInteger();
         var_2231 = param1.readInteger();
         var_2230 = param1.readInteger();
         var_2229 = param1.readBoolean();
         var_1826 = param1.readBoolean();
         var_1825 = param1.readInteger();
         var_1824 = param1.readInteger();
         return true;
      }
   }
}
