package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_933:String = "RWOCM_CLUB_MAIN";
      
      public static const const_683:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1904:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_683);
         var_1904 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1904;
      }
   }
}
