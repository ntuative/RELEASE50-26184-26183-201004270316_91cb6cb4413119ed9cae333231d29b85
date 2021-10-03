package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_81:Number = 0;
      
      private var _data:String = "";
      
      private var var_1477:int = 0;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2216:Boolean = false;
      
      private var var_2390:String = "";
      
      private var _id:int = 0;
      
      private var var_209:Boolean = false;
      
      private var var_242:String = "";
      
      private var var_2218:int = 0;
      
      private var var_2217:int = 0;
      
      private var var_1679:int = 0;
      
      private var var_1683:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2216 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_209)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2216;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_209)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_242;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_209)
         {
            var_1679 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_209)
         {
            var_2218 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_209)
         {
            var_2217 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_209)
         {
            var_242 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_209)
         {
            var_1683 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_209)
         {
            var_34 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1679;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_209)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2218;
      }
      
      public function get wallY() : Number
      {
         return var_2217;
      }
      
      public function get localY() : Number
      {
         return var_1683;
      }
      
      public function setReadOnly() : void
      {
         var_209 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_209)
         {
            var_81 = param1;
         }
      }
   }
}
