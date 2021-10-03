package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1647:int;
      
      private var var_1648:String;
      
      private var var_1642:int;
      
      private var _disposed:Boolean;
      
      private var var_1649:int;
      
      private var var_1643:String;
      
      private var var_1225:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1643 = param1.readString();
         var_1647 = param1.readInteger();
         var_1642 = param1.readInteger();
         var_1648 = param1.readString();
         var_1649 = param1.readInteger();
         var_1225 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1649;
      }
      
      public function get worldId() : int
      {
         return var_1642;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1643;
      }
      
      public function get unitPort() : int
      {
         return var_1647;
      }
      
      public function get castLibs() : String
      {
         return var_1648;
      }
      
      public function get nodeId() : int
      {
         return var_1225;
      }
   }
}
