package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class OpenedToWebPopup
   {
       
      
      private var var_169:Timer;
      
      private var _friendList:HabboFriendList;
      
      private var var_262:IWindowContainer;
      
      public function OpenedToWebPopup(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
      }
      
      private function getOpenedToWebAlert() : IWindowContainer
      {
         var _loc1_:IWindowContainer = IWindowContainer(_friendList.getXmlWindow("opened_to_web_popup"));
         _friendList.refreshButton(_loc1_,"opened_to_web",true,null,0);
         return _loc1_;
      }
      
      public function show(param1:int, param2:int) : void
      {
         if(var_262 != null)
         {
            close(null);
         }
         var_262 = getOpenedToWebAlert();
         if(var_169 != null)
         {
            var_169.stop();
         }
         var_169 = new Timer(2000,1);
         var_169.addEventListener(TimerEvent.TIMER,close);
         var_169.start();
         var_262.x = param1;
         var_262.y = param2;
      }
      
      private function close(param1:Event) : void
      {
         var_262.destroy();
         var_262 = null;
      }
   }
}
