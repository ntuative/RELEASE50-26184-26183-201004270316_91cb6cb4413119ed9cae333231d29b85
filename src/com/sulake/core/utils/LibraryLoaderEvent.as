package com.sulake.core.utils
{
   import flash.events.Event;
   
   public class LibraryLoaderEvent extends Event
   {
      
      public static const LIBRARY_LOADER_EVENT_DEBUG:String = "LIBRARY_LOADER_EVENT_DEBUG";
      
      public static const LIBRARY_LOADER_EVENT_UNLOAD:String = "LIBRARY_LOADER_EVENT_UNLOAD";
      
      public static const LIBRARY_LOADER_EVENT_COMPLETE:String = "LIBRARY_LOADER_EVENT_COMPLETE";
      
      public static const LIBRARY_LOADER_EVENT_PROGRESS:String = "LIBRARY_LOADER_EVENT_PROGRESS";
      
      public static const LIBRARY_LOADER_EVENT_ERROR:String = "LIBRARY_LOADER_EVENT_ERROR";
      
      public static const LIBRARY_LOADER_EVENT_STATUS:String = "LIBRARY_LOADER_EVENT_STATUS";
       
      
      private var var_163:int;
      
      private var var_1271:uint;
      
      private var var_1272:uint;
      
      public function LibraryLoaderEvent(param1:String, param2:int, param3:uint, param4:uint)
      {
         var_163 = param2;
         var_1272 = param3;
         var_1271 = param4;
         super(param1,false,false);
      }
      
      public function get bytesLoaded() : uint
      {
         return var_1271;
      }
      
      public function get status() : int
      {
         return var_163;
      }
      
      public function get bytesTotal() : uint
      {
         return var_1272;
      }
      
      override public function clone() : Event
      {
         return new LibraryLoaderEvent(type,var_163,var_1272,var_1271);
      }
   }
}
