package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2124:Boolean;
      
      private var var_1566:Array;
      
      private var var_2117:Boolean;
      
      private var var_2121:Boolean;
      
      private var var_2122:Boolean;
      
      private var var_153:Array;
      
      private var var_2119:Boolean;
      
      private var var_2118:Boolean;
      
      private var var_1567:Array;
      
      private var var_2120:Boolean;
      
      private var var_2123:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2123;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2124;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2117;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2119;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2118;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1566;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_153 = [];
         var_1566 = [];
         _roomMessageTemplates = [];
         var_1567 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_153.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1566.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1567.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2119 = param1.readBoolean();
         var_2122 = param1.readBoolean();
         var_2117 = param1.readBoolean();
         var_2121 = param1.readBoolean();
         var_2123 = param1.readBoolean();
         var_2118 = param1.readBoolean();
         var_2124 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2120 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2121;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1567;
      }
      
      public function get issues() : Array
      {
         return var_153;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2120;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2122;
      }
   }
}
