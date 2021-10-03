package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1087:int = 0;
      
      private var var_1152:int = 0;
      
      private var var_1659:String = "";
      
      private var var_1088:int = 0;
      
      private var var_1662:String = "";
      
      private var var_1661:int = 0;
      
      private var var_1577:String = "";
      
      private var var_1663:int = 0;
      
      private var var_1664:int = 0;
      
      private var var_1665:String = "";
      
      private var var_1660:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1663 = param1;
         var_1665 = param2;
         var_1577 = param3;
         var_1659 = param4;
         var_1662 = param5;
         if(param6)
         {
            var_1152 = 1;
         }
         else
         {
            var_1152 = 0;
         }
         var_1661 = param7;
         var_1664 = param8;
         var_1088 = param9;
         var_1660 = param10;
         var_1087 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1663,var_1665,var_1577,var_1659,var_1662,var_1152,var_1661,var_1664,var_1088,var_1660,var_1087];
      }
      
      public function dispose() : void
      {
      }
   }
}
