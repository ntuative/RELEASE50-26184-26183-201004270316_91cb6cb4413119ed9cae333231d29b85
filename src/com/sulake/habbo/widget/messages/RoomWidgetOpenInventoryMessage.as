package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_959:String = "inventory_badges";
      
      public static const const_1344:String = "inventory_clothes";
      
      public static const const_1350:String = "inventory_furniture";
      
      public static const const_597:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_900:String = "inventory_effects";
       
      
      private var var_2090:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_597);
         var_2090 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2090;
      }
   }
}
