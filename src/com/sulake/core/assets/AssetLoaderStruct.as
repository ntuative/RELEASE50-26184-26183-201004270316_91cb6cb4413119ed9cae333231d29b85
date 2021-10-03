package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_682:IAssetLoader;
      
      private var var_1246:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1246 = param1;
         var_682 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_682;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_682 != null)
            {
               if(true)
               {
                  var_682.dispose();
                  var_682 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1246;
      }
   }
}
