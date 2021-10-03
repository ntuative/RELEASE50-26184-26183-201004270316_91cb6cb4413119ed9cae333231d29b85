package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1222:String = "WN_CREATED";
      
      public static const const_1028:String = "WN_DISABLE";
      
      public static const const_996:String = "WN_DEACTIVATED";
      
      public static const const_909:String = "WN_OPENED";
      
      public static const const_832:String = "WN_CLOSED";
      
      public static const const_825:String = "WN_DESTROY";
      
      public static const const_1521:String = "WN_ARRANGED";
      
      public static const const_443:String = "WN_PARENT_RESIZED";
      
      public static const const_1029:String = "WN_ENABLE";
      
      public static const const_901:String = "WN_RELOCATE";
      
      public static const const_1015:String = "WN_FOCUS";
      
      public static const const_864:String = "WN_PARENT_RELOCATED";
      
      public static const const_419:String = "WN_PARAM_UPDATED";
      
      public static const const_616:String = "WN_PARENT_ACTIVATED";
      
      public static const const_168:String = "WN_RESIZED";
      
      public static const const_1022:String = "WN_CLOSE";
      
      public static const const_850:String = "WN_PARENT_REMOVED";
      
      public static const const_252:String = "WN_CHILD_RELOCATED";
      
      public static const const_580:String = "WN_ENABLED";
      
      public static const const_258:String = "WN_CHILD_RESIZED";
      
      public static const const_1013:String = "WN_MINIMIZED";
      
      public static const const_655:String = "WN_DISABLED";
      
      public static const const_222:String = "WN_CHILD_ACTIVATED";
      
      public static const const_425:String = "WN_STATE_UPDATED";
      
      public static const const_620:String = "WN_UNSELECTED";
      
      public static const const_403:String = "WN_STYLE_UPDATED";
      
      public static const const_1617:String = "WN_UPDATE";
      
      public static const const_408:String = "WN_PARENT_ADDED";
      
      public static const const_585:String = "WN_RESIZE";
      
      public static const const_745:String = "WN_CHILD_REMOVED";
      
      public static const const_1605:String = "";
      
      public static const const_863:String = "WN_RESTORED";
      
      public static const const_337:String = "WN_SELECTED";
      
      public static const const_830:String = "WN_MINIMIZE";
      
      public static const const_1003:String = "WN_FOCUSED";
      
      public static const const_1272:String = "WN_LOCK";
      
      public static const const_343:String = "WN_CHILD_ADDED";
      
      public static const const_847:String = "WN_UNFOCUSED";
      
      public static const const_379:String = "WN_RELOCATED";
      
      public static const const_838:String = "WN_DEACTIVATE";
      
      public static const const_1239:String = "WN_CRETAE";
      
      public static const const_1017:String = "WN_RESTORE";
      
      public static const const_326:String = "WN_ACTVATED";
      
      public static const const_1383:String = "WN_LOCKED";
      
      public static const const_445:String = "WN_SELECT";
      
      public static const const_930:String = "WN_MAXIMIZE";
      
      public static const const_882:String = "WN_OPEN";
      
      public static const const_736:String = "WN_UNSELECT";
      
      public static const const_1462:String = "WN_ARRANGE";
      
      public static const const_1317:String = "WN_UNLOCKED";
      
      public static const const_1480:String = "WN_UPDATED";
      
      public static const const_913:String = "WN_ACTIVATE";
      
      public static const const_1254:String = "WN_UNLOCK";
      
      public static const const_894:String = "WN_MAXIMIZED";
      
      public static const const_1006:String = "WN_DESTROYED";
      
      public static const const_976:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1618,cancelable);
      }
   }
}
