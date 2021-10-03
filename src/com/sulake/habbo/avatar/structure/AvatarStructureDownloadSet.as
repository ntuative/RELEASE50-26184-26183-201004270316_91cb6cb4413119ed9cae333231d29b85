package com.sulake.habbo.avatar.structure
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class AvatarStructureDownloadSet extends EventDispatcher
   {
      
      public static const DOWNLOAD_SET_DONE:String = "DOWNLOAD_SET_DONE";
       
      
      private var var_1499:int = 0;
      
      private var var_1498:int = 0;
      
      public function AvatarStructureDownloadSet()
      {
         super();
      }
      
      public function add(param1:AvatarStructureDownload) : void
      {
         param1.addEventListener(AvatarStructureDownload.const_1027,onDownloadDone);
         ++var_1499;
      }
      
      private function onDownloadDone(param1:Event = null) : void
      {
         ++var_1498;
         if(var_1498 == var_1499)
         {
            dispatchEvent(new Event(DOWNLOAD_SET_DONE));
         }
      }
   }
}
