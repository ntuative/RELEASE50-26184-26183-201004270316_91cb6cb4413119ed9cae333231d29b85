package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1313:int;
      
      private var var_1312:String;
      
      private var var_2017:String;
      
      private var _index:int;
      
      private var var_2018:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1313 = param1;
         var_2017 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1312;
      }
      
      public function get questionId() : int
      {
         return var_1313;
      }
      
      public function get questionText() : String
      {
         return var_2017;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1312 = param1;
         var_2018 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_2018;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
