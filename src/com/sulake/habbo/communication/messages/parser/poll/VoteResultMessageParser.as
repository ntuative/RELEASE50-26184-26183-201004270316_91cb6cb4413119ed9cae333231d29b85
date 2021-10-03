package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1285:int;
      
      private var var_1086:String;
      
      private var var_756:Array;
      
      private var var_1025:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_756.slice();
      }
      
      public function flush() : Boolean
      {
         var_1086 = "";
         var_1025 = [];
         var_756 = [];
         var_1285 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1285;
      }
      
      public function get question() : String
      {
         return var_1086;
      }
      
      public function get choices() : Array
      {
         return var_1025.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1086 = param1.readString();
         var_1025 = [];
         var_756 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1025.push(param1.readString());
            var_756.push(param1.readInteger());
            _loc3_++;
         }
         var_1285 = param1.readInteger();
         return true;
      }
   }
}
