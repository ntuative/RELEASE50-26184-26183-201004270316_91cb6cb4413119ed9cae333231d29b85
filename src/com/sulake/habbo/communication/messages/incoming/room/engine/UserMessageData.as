package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1221:String = "F";
      
      public static const const_871:String = "M";
       
      
      private var var_82:Number = 0;
      
      private var var_312:String = "";
      
      private var var_2167:int = 0;
      
      private var var_2169:String = "";
      
      private var var_2168:int = 0;
      
      private var var_1813:int = 0;
      
      private var var_2166:String = "";
      
      private var var_632:String = "";
      
      private var _id:int = 0;
      
      private var var_209:Boolean = false;
      
      private var var_242:int = 0;
      
      private var var_2170:String = "";
      
      private var _name:String = "";
      
      private var var_1804:int = 0;
      
      private var _y:Number = 0;
      
      private var var_81:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_242;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_209)
         {
            var_242 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_209)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2167;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_209)
         {
            var_2168 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2170;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_209)
         {
            var_2166 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_209)
         {
            var_2170 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_209)
         {
            var_1813 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_209)
         {
            var_312 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_209)
         {
            var_2167 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_209)
         {
            var_632 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_2168;
      }
      
      public function get groupID() : String
      {
         return var_2166;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_209)
         {
            var_1804 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_209)
         {
            var_2169 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_209 = true;
      }
      
      public function get sex() : String
      {
         return var_632;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function get webID() : int
      {
         return var_1804;
      }
      
      public function get custom() : String
      {
         return var_2169;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_209)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_209)
         {
            var_81 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_209)
         {
            var_82 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1813;
      }
   }
}
