package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_257:String = "WE_CHILD_RESIZED";
      
      public static const const_1329:String = "WE_CLOSE";
      
      public static const const_1346:String = "WE_DESTROY";
      
      public static const const_114:String = "WE_CHANGE";
      
      public static const const_1160:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1452:String = "WE_PARENT_RESIZE";
      
      public static const const_97:String = "WE_UPDATE";
      
      public static const const_1142:String = "WE_MAXIMIZE";
      
      public static const const_474:String = "WE_DESTROYED";
      
      public static const const_912:String = "WE_UNSELECT";
      
      public static const const_1339:String = "WE_MAXIMIZED";
      
      public static const const_1602:String = "WE_UNLOCKED";
      
      public static const const_466:String = "WE_CHILD_REMOVED";
      
      public static const const_172:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1188:String = "WE_ACTIVATE";
      
      public static const const_276:String = "WE_ENABLED";
      
      public static const const_415:String = "WE_CHILD_RELOCATED";
      
      public static const const_1293:String = "WE_CREATE";
      
      public static const const_548:String = "WE_SELECT";
      
      public static const const_156:String = "";
      
      public static const const_1447:String = "WE_LOCKED";
      
      public static const const_1585:String = "WE_PARENT_RELOCATE";
      
      public static const const_1531:String = "WE_CHILD_REMOVE";
      
      public static const const_1583:String = "WE_CHILD_RELOCATE";
      
      public static const const_1533:String = "WE_LOCK";
      
      public static const const_214:String = "WE_FOCUSED";
      
      public static const const_547:String = "WE_UNSELECTED";
      
      public static const const_814:String = "WE_DEACTIVATED";
      
      public static const const_1392:String = "WE_MINIMIZED";
      
      public static const const_1598:String = "WE_ARRANGED";
      
      public static const const_1525:String = "WE_UNLOCK";
      
      public static const const_1511:String = "WE_ATTACH";
      
      public static const const_1255:String = "WE_OPEN";
      
      public static const const_1405:String = "WE_RESTORE";
      
      public static const const_1476:String = "WE_PARENT_RELOCATED";
      
      public static const const_1220:String = "WE_RELOCATE";
      
      public static const const_1569:String = "WE_CHILD_RESIZE";
      
      public static const const_1556:String = "WE_ARRANGE";
      
      public static const const_1176:String = "WE_OPENED";
      
      public static const const_1225:String = "WE_CLOSED";
      
      public static const const_1501:String = "WE_DETACHED";
      
      public static const const_1575:String = "WE_UPDATED";
      
      public static const const_1403:String = "WE_UNFOCUSED";
      
      public static const const_388:String = "WE_RELOCATED";
      
      public static const const_1398:String = "WE_DEACTIVATE";
      
      public static const const_228:String = "WE_DISABLED";
      
      public static const const_685:String = "WE_CANCEL";
      
      public static const const_541:String = "WE_ENABLE";
      
      public static const const_1281:String = "WE_ACTIVATED";
      
      public static const const_1151:String = "WE_FOCUS";
      
      public static const const_1553:String = "WE_DETACH";
      
      public static const const_1236:String = "WE_RESTORED";
      
      public static const const_1214:String = "WE_UNFOCUS";
      
      public static const const_63:String = "WE_SELECTED";
      
      public static const const_1147:String = "WE_PARENT_RESIZED";
      
      public static const const_1320:String = "WE_CREATED";
      
      public static const const_1478:String = "WE_ATTACHED";
      
      public static const const_1336:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1618:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1397:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1618 = param3;
         var_1397 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1397;
      }
      
      public function get related() : IWindow
      {
         return var_1618;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1397 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
