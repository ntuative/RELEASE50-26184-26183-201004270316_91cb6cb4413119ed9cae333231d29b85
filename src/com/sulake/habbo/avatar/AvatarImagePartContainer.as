package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1920:int;
      
      private var var_1918:String;
      
      private var var_1431:IActionDefinition;
      
      private var var_1922:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1917:String;
      
      private var var_1919:String;
      
      private var var_1702:Boolean;
      
      private var var_1921:ColorTransform;
      
      private var var_1768:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1918 = param1;
         var_1917 = param2;
         var_1920 = param3;
         _color = param4;
         _frames = param5;
         var_1431 = param6;
         var_1702 = param7;
         var_1768 = param8;
         var_1919 = param9;
         var_1922 = param10;
         var_1921 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1702;
      }
      
      public function get partType() : String
      {
         return var_1917;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1768;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1922;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1920;
      }
      
      public function get flippedPartType() : String
      {
         return var_1919;
      }
      
      public function get bodyPartId() : String
      {
         return var_1918;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1431;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1921;
      }
   }
}
