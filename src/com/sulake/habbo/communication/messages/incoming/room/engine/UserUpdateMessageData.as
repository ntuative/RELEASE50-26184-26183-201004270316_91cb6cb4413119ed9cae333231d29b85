package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_81:Number = 0;
      
      private var var_242:int = 0;
      
      private var var_1955:int = 0;
      
      private var var_1957:Number = 0;
      
      private var var_1956:Number = 0;
      
      private var var_1953:Number = 0;
      
      private var var_1954:Number = 0;
      
      private var var_1952:Boolean = false;
      
      private var var_82:Number = 0;
      
      private var _id:int = 0;
      
      private var var_206:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_206 = [];
         super();
         _id = param1;
         var_82 = param2;
         _y = param3;
         var_81 = param4;
         var_1954 = param5;
         var_242 = param6;
         var_1955 = param7;
         var_1957 = param8;
         var_1956 = param9;
         var_1953 = param10;
         var_1952 = param11;
         var_206 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function get dir() : int
      {
         return var_242;
      }
      
      public function get localZ() : Number
      {
         return var_1954;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1952;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1955;
      }
      
      public function get targetX() : Number
      {
         return var_1957;
      }
      
      public function get targetY() : Number
      {
         return var_1956;
      }
      
      public function get targetZ() : Number
      {
         return var_1953;
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get actions() : Array
      {
         return var_206.slice();
      }
   }
}
