package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1381:int;
      
      private var var_1212:int;
      
      private var var_1382:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1381;
      }
      
      public function flush() : Boolean
      {
         var_1212 = 0;
         var_1381 = 0;
         var_1382 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1212;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1381 = param1.readInteger();
         var_1212 = param1.readInteger();
         var_1382 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1382;
      }
   }
}
