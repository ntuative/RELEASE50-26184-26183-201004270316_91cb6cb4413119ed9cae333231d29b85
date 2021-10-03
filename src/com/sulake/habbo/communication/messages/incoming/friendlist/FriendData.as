package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_312:String;
      
      private var var_1264:String;
      
      private var var_1266:String;
      
      private var var_1261:int;
      
      private var var_638:int;
      
      private var var_1265:String;
      
      private var _name:String;
      
      private var var_1135:Boolean;
      
      private var var_683:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_638 = param1.readInteger();
         this.var_683 = param1.readBoolean();
         this.var_1135 = param1.readBoolean();
         this.var_312 = param1.readString();
         this.var_1261 = param1.readInteger();
         this.var_1266 = param1.readString();
         this.var_1264 = param1.readString();
         this.var_1265 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_638;
      }
      
      public function get realName() : String
      {
         return var_1265;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1266;
      }
      
      public function get categoryId() : int
      {
         return var_1261;
      }
      
      public function get online() : Boolean
      {
         return var_683;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1135;
      }
      
      public function get lastAccess() : String
      {
         return var_1264;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
   }
}
