package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_183:String;
      
      private var var_401:int;
      
      private var var_188:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_183 = param1;
         var_188 = param2;
         var_401 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_188.text = var_183.substring(0,param1) + "...";
         return var_188.textHeight > var_401;
      }
   }
}
