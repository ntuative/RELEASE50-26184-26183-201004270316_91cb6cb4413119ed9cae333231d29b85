package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_312:String;
      
      private var var_2328:String;
      
      private var var_2329:int;
      
      private var var_2330:int;
      
      private var var_632:String;
      
      private var var_1265:String;
      
      private var _name:String;
      
      private var var_537:int;
      
      private var var_909:int;
      
      private var var_2331:int;
      
      private var var_2253:int;
      
      private var var_2327:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2330;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1265;
      }
      
      public function get customData() : String
      {
         return this.var_2328;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_537;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2329;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2327;
      }
      
      public function get figure() : String
      {
         return this.var_312;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2253;
      }
      
      public function get sex() : String
      {
         return this.var_632;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_312 = param1.readString();
         this.var_632 = param1.readString();
         this.var_2328 = param1.readString();
         this.var_1265 = param1.readString();
         this.var_2331 = param1.readInteger();
         this.var_2327 = param1.readString();
         this.var_2329 = param1.readInteger();
         this.var_2330 = param1.readInteger();
         this.var_2253 = param1.readInteger();
         this.var_909 = param1.readInteger();
         this.var_537 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2331;
      }
      
      public function get respectLeft() : int
      {
         return this.var_909;
      }
   }
}
