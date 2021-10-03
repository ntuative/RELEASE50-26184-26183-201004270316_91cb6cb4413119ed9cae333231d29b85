package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1036:Boolean;
      
      private var var_1034:Boolean;
      
      private var var_1035:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1036;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1034;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1035 = param1.readBoolean();
         var_1034 = param1.readBoolean();
         var_1036 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1035;
      }
      
      public function flush() : Boolean
      {
         var_1035 = false;
         var_1034 = false;
         var_1036 = false;
         return true;
      }
   }
}
