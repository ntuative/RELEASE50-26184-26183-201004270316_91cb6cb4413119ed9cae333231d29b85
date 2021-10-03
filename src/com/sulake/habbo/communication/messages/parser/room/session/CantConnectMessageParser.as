package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1460:int = 2;
      
      public static const const_1277:int = 4;
      
      public static const const_1198:int = 1;
      
      public static const const_1402:int = 3;
       
      
      private var var_988:int = 0;
      
      private var var_806:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_988;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_988 = param1.readInteger();
         if(var_988 == 3)
         {
            var_806 = param1.readString();
         }
         else
         {
            var_806 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_988 = 0;
         var_806 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_806;
      }
   }
}
