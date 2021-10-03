package com.sulake.habbo.messenger.domain
{
   import com.sulake.core.runtime.IDisposable;
   
   public class Conversation implements IDisposable
   {
       
      
      private var _id:int;
      
      private var var_312:String;
      
      private var _disposed:Boolean;
      
      private var var_781:Boolean;
      
      private var _name:String;
      
      private var var_966:Array;
      
      private var var_1135:Boolean;
      
      private var _selected:Boolean;
      
      public function Conversation(param1:int, param2:String, param3:String, param4:Boolean)
      {
         var_966 = new Array();
         super();
         _id = param1;
         _name = param2;
         var_312 = param3;
         var_1135 = param4;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get messages() : Array
      {
         return var_966;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1135;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(param1)
         {
            var_781 = false;
         }
         _selected = param1;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_966 = null;
      }
      
      public function get selected() : Boolean
      {
         return _selected;
      }
      
      public function setNewMessageArrived(param1:Boolean) : void
      {
         if(_selected)
         {
            var_781 = false;
         }
         else
         {
            var_781 = param1;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function addMessage(param1:Message) : void
      {
         var_966.push(param1);
      }
      
      public function get newMessageArrived() : Boolean
      {
         return var_781;
      }
      
      public function set followingAllowed(param1:Boolean) : void
      {
         var_1135 = param1;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
   }
}
