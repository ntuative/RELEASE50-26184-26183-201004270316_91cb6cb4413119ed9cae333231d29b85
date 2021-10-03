package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1827:int = 0;
      
      private var var_1458:int = 0;
      
      private var var_1826:Boolean = false;
      
      private var var_1769:int = 0;
      
      private var var_1824:int = 0;
      
      private var var_1459:int = 0;
      
      private var var_1825:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1458;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1458 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1826 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_1825 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1458 > 0 || var_1459 > 0;
      }
      
      public function get credits() : int
      {
         return var_1769;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_1824 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1459;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1826;
      }
      
      public function get pastClubDays() : int
      {
         return var_1825;
      }
      
      public function get pastVipDays() : int
      {
         return var_1824;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1827 = param1;
      }
      
      public function get pixels() : int
      {
         return var_1827;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1459 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1769 = param1;
      }
   }
}
