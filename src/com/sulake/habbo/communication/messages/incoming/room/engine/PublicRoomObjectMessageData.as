package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_1071:int = 0;
      
      private var var_81:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_209:Boolean = false;
      
      private var var_242:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_82:Number = 0;
      
      private var var_1070:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_209)
         {
            var_81 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_1071;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_242;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_209)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_209)
         {
            var_242 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_209)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_209 = true;
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_209)
         {
            var_1071 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_209)
         {
            var_1070 = param1;
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
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_209)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1070;
      }
   }
}
