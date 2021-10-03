package com.sulake.habbo.communication.messages.outgoing.catalog
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GetIsOfferGiftableComposer implements IMessageComposer
   {
       
      
      private var _data:Array;
      
      public function GetIsOfferGiftableComposer(param1:int)
      {
         _data = [];
         super();
         _data.push(param1);
      }
      
      public function dispose() : void
      {
         _data = [];
      }
      
      public function getMessageArray() : Array
      {
         return _data;
      }
   }
}
