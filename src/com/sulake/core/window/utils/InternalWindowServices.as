package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_121:DisplayObject;
      
      private var var_2355:uint;
      
      private var var_929:IWindowToolTipAgentService;
      
      private var var_926:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_927:IWindowFocusManagerService;
      
      private var var_928:IWindowMouseListenerService;
      
      private var var_925:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2355 = 0;
         var_121 = param2;
         _windowContext = param1;
         var_925 = new WindowMouseDragger(param2);
         var_926 = new WindowMouseScaler(param2);
         var_928 = new WindowMouseListener(param2);
         var_927 = new FocusManager(param2);
         var_929 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_926;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_927;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_929;
      }
      
      public function dispose() : void
      {
         if(var_925 != null)
         {
            var_925.dispose();
            var_925 = null;
         }
         if(var_926 != null)
         {
            var_926.dispose();
            var_926 = null;
         }
         if(var_928 != null)
         {
            var_928.dispose();
            var_928 = null;
         }
         if(var_927 != null)
         {
            var_927.dispose();
            var_927 = null;
         }
         if(var_929 != null)
         {
            var_929.dispose();
            var_929 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_928;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_925;
      }
   }
}
