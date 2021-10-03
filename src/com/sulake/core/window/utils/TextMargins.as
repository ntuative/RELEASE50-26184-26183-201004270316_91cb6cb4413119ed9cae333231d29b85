package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_830:int;
      
      private var _right:int;
      
      private var var_828:int;
      
      private var var_829:int;
      
      private var var_186:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_828 = param1;
         var_829 = param2;
         _right = param3;
         var_830 = param4;
         var_186 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_830 = param1;
         var_186(this);
      }
      
      public function get left() : int
      {
         return var_828;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_828 == 0 && _right == 0 && var_829 == 0 && var_830 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_829 = param1;
         var_186(this);
      }
      
      public function get top() : int
      {
         return var_829;
      }
      
      public function set left(param1:int) : void
      {
         var_828 = param1;
         var_186(this);
      }
      
      public function get bottom() : int
      {
         return var_830;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_828,var_829,_right,var_830,param1);
      }
      
      public function dispose() : void
      {
         var_186 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_186(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
