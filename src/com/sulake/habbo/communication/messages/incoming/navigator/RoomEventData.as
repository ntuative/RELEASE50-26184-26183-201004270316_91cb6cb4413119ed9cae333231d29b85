package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1652:String;
      
      private var var_423:int;
      
      private var var_2196:String;
      
      private var var_2197:String;
      
      private var var_2200:int;
      
      private var var_2198:String;
      
      private var var_2199:int;
      
      private var var_642:Array;
      
      private var var_978:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_642 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_978 = false;
            return;
         }
         this.var_978 = true;
         var_2200 = int(_loc2_);
         var_2196 = param1.readString();
         var_423 = int(param1.readString());
         var_2199 = param1.readInteger();
         var_1652 = param1.readString();
         var_2197 = param1.readString();
         var_2198 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_642.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2199;
      }
      
      public function get eventName() : String
      {
         return var_1652;
      }
      
      public function get eventDescription() : String
      {
         return var_2197;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2196;
      }
      
      public function get tags() : Array
      {
         return var_642;
      }
      
      public function get creationTime() : String
      {
         return var_2198;
      }
      
      public function get exists() : Boolean
      {
         return var_978;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2200;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_642 = null;
      }
      
      public function get flatId() : int
      {
         return var_423;
      }
   }
}
