package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1294:String;
      
      private var _disposed:Boolean;
      
      private var var_1410:String;
      
      private var var_1293:int;
      
      private var _main:ModerationManager;
      
      private var var_785:IDropMenuWindow;
      
      private var var_435:ITextFieldWindow;
      
      private var var_51:IFrameWindow;
      
      private var var_314:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         _main = param1;
         var_1293 = param2;
         var_1410 = param3;
         var_1294 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_214)
         {
            return;
         }
         if(!var_314)
         {
            return;
         }
         var_435.text = "";
         var_314 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_51;
      }
      
      public function getId() : String
      {
         return var_1410;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_314 || false)
         {
            _main.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         _main.connection.send(new ModMessageMessageComposer(var_1293,var_435.text,var_1294));
         this.dispose();
      }
      
      public function show() : void
      {
         var_51 = IFrameWindow(_main.getXmlWindow("send_msgs"));
         var_51.caption = "Msg To: " + var_1410;
         var_51.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_435 = ITextFieldWindow(var_51.findChildByName("message_input"));
         var_435.procedure = onInputClick;
         var_785 = IDropMenuWindow(var_51.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_785);
         var_785.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_51.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_51.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + _main.initMsg.messageTemplates.length);
         param1.populate(_main.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_51 != null)
         {
            var_51.destroy();
            var_51 = null;
         }
         var_785 = null;
         var_435 = null;
         _main = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_63)
         {
            return;
         }
         var _loc3_:String = _main.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_314 = false;
            var_435.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1294;
      }
   }
}
