package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1641:Boolean;
      
      private var var_1640:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1641 = Boolean(parseInt(param1.@club));
         var_1640 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1641;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1640;
      }
   }
}
