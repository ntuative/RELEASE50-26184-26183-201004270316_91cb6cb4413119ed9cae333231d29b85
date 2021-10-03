package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1687:int;
      
      private var var_2150:int;
      
      private var var_1694:int;
      
      private var var_1691:int;
      
      private var _nutrition:int;
      
      private var var_1311:int;
      
      private var var_1693:int;
      
      private var var_1692:int;
      
      private var _energy:int;
      
      private var var_1690:int;
      
      private var var_1697:int;
      
      private var _ownerName:String;
      
      private var var_1688:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1687;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_2150 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1687 = param1;
      }
      
      public function get petId() : int
      {
         return var_1311;
      }
      
      public function get experienceMax() : int
      {
         return var_1692;
      }
      
      public function get nutritionMax() : int
      {
         return var_1691;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1693 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1688;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1311 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1697;
      }
      
      public function get respect() : int
      {
         return var_2150;
      }
      
      public function get levelMax() : int
      {
         return var_1693;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1692 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1694 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1691 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1688 = param1;
      }
      
      public function get experience() : int
      {
         return var_1694;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1697 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1690 = param1;
      }
      
      public function get age() : int
      {
         return var_1690;
      }
   }
}
