package com.sulake.habbo.communication.demo
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.communication.IHabboWebLogin;
   import com.sulake.habbo.communication.enum.HabboWeb;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class SSOTicket extends EventDispatcher
   {
      
      public static const const_263:String = "failure";
      
      public static const const_303:String = "success";
       
      
      private var _assets:IAssetLibrary;
      
      private var var_1159:String;
      
      private var var_1710:String;
      
      private var var_1429:String;
      
      private var var_1160:IHabboWebLogin;
      
      private var var_15:URLLoader;
      
      private var var_2388:String;
      
      public function SSOTicket(param1:IAssetLibrary, param2:IHabboWebLogin, param3:String)
      {
         super();
         _assets = param1;
         var_1160 = param2;
         var_1159 = "http://" + param3 + "/client";
         var_1160.init();
         var_1160.addEventListener(HabboWeb.const_230,requestClientURL);
      }
      
      public function get shockwaveClientUrl() : String
      {
         return var_1710;
      }
      
      private function requestClientURL(param1:Event = null) : void
      {
         var _loc2_:String = var_1159;
         if(_assets.hasAsset(_loc2_))
         {
            Logger.log("[CoreLocalizationManager] reload localization for url: " + var_1159);
         }
         var _loc3_:URLRequest = new URLRequest(var_1159);
         if(_assets.hasAsset(_loc2_))
         {
            _assets.removeAsset(_assets.getAssetByName(_loc2_));
         }
         var _loc4_:AssetLoaderStruct = _assets.loadAssetFromFile(_loc2_,_loc3_,"text/plain");
         _loc4_.addEventListener(AssetLoaderEvent.const_37,clientURLComplete);
      }
      
      public function get ticket() : String
      {
         return var_1429;
      }
      
      private function clientURLComplete(param1:Event = null) : void
      {
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         var data:String = loaderStruct.assetLoader.content as String;
         if(data.indexOf("account/reauthenticate\"") > -1)
         {
            var_1160.requestReAuthenticate();
         }
         else
         {
            try
            {
               var_1429 = /\"sso.ticket\" : \"(.*?)\"/.exec(data)[1];
               var_1710 = /\"flash.client.url\" : \"(.*?)\"/.exec(data)[1];
               if(false)
               {
                  dispatchEvent(new Event(const_303));
               }
               else
               {
                  dispatchEvent(new Event(const_263));
               }
            }
            catch(e:Error)
            {
               trace(e);
               dispatchEvent(new Event(const_263));
            }
         }
      }
   }
}
