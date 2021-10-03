package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1374:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_938:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1374 = param1;
         var_938 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_938;
      }
      
      public function get identifier() : IID
      {
         return var_1374;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1374 = null;
            while(false)
            {
               var_938.pop();
            }
            var_938 = null;
         }
      }
   }
}
