package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_882:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_882 = new Array();
         var_882.push(param1.length);
         var_882 = var_882.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_882;
      }
   }
}
