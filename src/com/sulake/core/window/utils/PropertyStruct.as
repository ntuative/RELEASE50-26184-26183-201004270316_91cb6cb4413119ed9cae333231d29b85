package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_669:String = "Rectangle";
      
      public static const const_60:String = "Boolean";
      
      public static const const_653:String = "Number";
      
      public static const const_69:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_509:String = "Point";
      
      public static const const_884:String = "Array";
      
      public static const const_968:String = "uint";
      
      public static const const_374:String = "hex";
      
      public static const const_979:String = "Map";
       
      
      private var var_619:String;
      
      private var var_183:Object;
      
      private var var_2345:Boolean;
      
      private var _type:String;
      
      private var var_2160:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_619 = param1;
         var_183 = param2;
         _type = param3;
         var_2160 = param4;
         var_2345 = param3 == const_979 || param3 == const_884 || param3 == const_509 || param3 == const_669;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_374:
               return "0x" + uint(var_183).toString(16);
            case const_60:
               return Boolean(var_183) == true ? "true" : "false";
            case const_509:
               return "Point(" + Point(var_183).x + ", " + Point(var_183).y + ")";
            case const_669:
               return "Rectangle(" + Rectangle(var_183).x + ", " + Rectangle(var_183).y + ", " + Rectangle(var_183).width + ", " + Rectangle(var_183).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_979:
               _loc3_ = var_183 as Map;
               _loc1_ = "<var key=\"" + var_619 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_884:
               _loc4_ = var_183 as Array;
               _loc1_ = "<var key=\"" + var_619 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_509:
               _loc5_ = var_183 as Point;
               _loc1_ = "<var key=\"" + var_619 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_69 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_69 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_669:
               _loc6_ = var_183 as Rectangle;
               _loc1_ = "<var key=\"" + var_619 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_69 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_69 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_69 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_69 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_374:
               _loc1_ = "<var key=\"" + var_619 + "\" value=\"" + "0x" + uint(var_183).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_619 + "\" value=\"" + var_183 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_183;
      }
      
      public function get valid() : Boolean
      {
         return var_2160;
      }
      
      public function get key() : String
      {
         return var_619;
      }
   }
}
