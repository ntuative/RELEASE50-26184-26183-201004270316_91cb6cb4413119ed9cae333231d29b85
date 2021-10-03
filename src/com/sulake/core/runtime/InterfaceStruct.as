package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_387:uint;
      
      private var var_964:IUnknown;
      
      private var var_1134:String;
      
      private var var_963:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_963 = param1;
         var_1134 = getQualifiedClassName(var_963);
         var_964 = param2;
         var_387 = 0;
      }
      
      public function get iid() : IID
      {
         return var_963;
      }
      
      public function get disposed() : Boolean
      {
         return var_964 == null;
      }
      
      public function get references() : uint
      {
         return var_387;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_387) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_964;
      }
      
      public function get iis() : String
      {
         return var_1134;
      }
      
      public function reserve() : uint
      {
         return ++var_387;
      }
      
      public function dispose() : void
      {
         var_963 = null;
         var_1134 = null;
         var_964 = null;
         var_387 = 0;
      }
   }
}
