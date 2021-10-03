package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_638:String;
      
      private var _id:int;
      
      private var var_2040:String = "";
      
      private var var_2038:int;
      
      private var var_2039:String;
      
      private var var_1702:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2038 = parseInt(param1.@pattern);
         var_638 = String(param1.@gender);
         var_1702 = Boolean(parseInt(param1.@colorable));
         var_2040 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2040;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1702;
      }
      
      public function get gender() : String
      {
         return var_638;
      }
      
      public function get patternId() : int
      {
         return var_2038;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2039;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2039 = param1;
      }
   }
}
