package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1690:int;
      
      private var var_312:String;
      
      private var var_1687:int;
      
      private var var_2150:int;
      
      private var var_1694:int;
      
      private var var_2259:int;
      
      private var _nutrition:int;
      
      private var var_1311:int;
      
      private var var_2261:int;
      
      private var var_2260:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1688:int;
      
      private var var_2258:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2259;
      }
      
      public function flush() : Boolean
      {
         var_1311 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2261;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2260;
      }
      
      public function get maxNutrition() : int
      {
         return var_2258;
      }
      
      public function get figure() : String
      {
         return var_312;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_2150;
      }
      
      public function get petId() : int
      {
         return var_1311;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1311 = param1.readInteger();
         _name = param1.readString();
         var_1687 = param1.readInteger();
         var_2261 = param1.readInteger();
         var_1694 = param1.readInteger();
         var_2260 = param1.readInteger();
         _energy = param1.readInteger();
         var_2259 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2258 = param1.readInteger();
         var_312 = param1.readString();
         var_2150 = param1.readInteger();
         var_1688 = param1.readInteger();
         var_1690 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1694;
      }
      
      public function get ownerId() : int
      {
         return var_1688;
      }
      
      public function get age() : int
      {
         return var_1690;
      }
   }
}
