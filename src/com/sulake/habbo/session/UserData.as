package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_312:String = "";
      
      private var var_2169:String = "";
      
      private var var_2168:int = 0;
      
      private var var_1813:int = 0;
      
      private var _type:int = 0;
      
      private var var_2166:String = "";
      
      private var var_632:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1804:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_2168 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_2166 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_312 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_632 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_2168;
      }
      
      public function set webID(param1:int) : void
      {
         var_1804 = param1;
      }
      
      public function get groupID() : String
      {
         return var_2166;
      }
      
      public function set custom(param1:String) : void
      {
         var_2169 = param1;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function get sex() : String
      {
         return var_632;
      }
      
      public function get custom() : String
      {
         return var_2169;
      }
      
      public function get webID() : int
      {
         return var_1804;
      }
      
      public function set xp(param1:int) : void
      {
         var_1813 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1813;
      }
   }
}
