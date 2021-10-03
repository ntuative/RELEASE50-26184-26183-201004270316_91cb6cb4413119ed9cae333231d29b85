package com.sulake.core.communication.connection
{
   import com.sulake.core.communication.encryption.IEncryption;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import flash.events.IEventDispatcher;
   
   public interface IConnection extends IEventDispatcher
   {
       
      
      function init(param1:String, param2:uint = 0) : Boolean;
      
      function processReceivedData() : void;
      
      function registerMessageClasses(param1:IMessageConfiguration) : void;
      
      function addMessageEvent(param1:IMessageEvent) : void;
      
      function setEncryption(param1:IEncryption) : void;
      
      function set protocol(param1:IProtocol) : void;
      
      function send(param1:IMessageComposer, param2:int = -1) : Boolean;
      
      function set timeout(param1:int) : void;
      
      function get protocol() : IProtocol;
      
      function dispose() : void;
   }
}
