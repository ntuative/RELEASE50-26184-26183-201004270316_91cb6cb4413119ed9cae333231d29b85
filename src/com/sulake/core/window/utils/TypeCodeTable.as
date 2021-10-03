package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_680;
         param1["bitmap"] = const_625;
         param1["border"] = const_628;
         param1["border_notify"] = const_1379;
         param1["button"] = const_444;
         param1["button_thick"] = const_723;
         param1["button_icon"] = const_1250;
         param1["button_group_left"] = const_590;
         param1["button_group_center"] = const_533;
         param1["button_group_right"] = const_652;
         param1["canvas"] = const_516;
         param1["checkbox"] = const_587;
         param1["closebutton"] = const_878;
         param1["container"] = const_287;
         param1["container_button"] = const_593;
         param1["display_object_wrapper"] = const_602;
         param1["dropmenu"] = const_470;
         param1["dropmenu_item"] = const_481;
         param1["frame"] = const_288;
         param1["frame_notify"] = const_1209;
         param1["header"] = const_658;
         param1["icon"] = const_893;
         param1["itemgrid"] = const_993;
         param1["itemgrid_horizontal"] = const_360;
         param1["itemgrid_vertical"] = const_670;
         param1["itemlist"] = const_827;
         param1["itemlist_horizontal"] = const_333;
         param1["itemlist_vertical"] = const_309;
         param1["maximizebox"] = const_1149;
         param1["menu"] = const_1305;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_989;
         param1["minimizebox"] = const_1299;
         param1["notify"] = const_1292;
         param1["null"] = const_568;
         param1["password"] = const_693;
         param1["radiobutton"] = const_510;
         param1["region"] = const_462;
         param1["restorebox"] = const_1181;
         param1["scaler"] = const_598;
         param1["scaler_horizontal"] = const_1241;
         param1["scaler_vertical"] = const_1219;
         param1["scrollbar_horizontal"] = const_450;
         param1["scrollbar_vertical"] = const_714;
         param1["scrollbar_slider_button_up"] = const_877;
         param1["scrollbar_slider_button_down"] = const_950;
         param1["scrollbar_slider_button_left"] = const_848;
         param1["scrollbar_slider_button_right"] = const_984;
         param1["scrollbar_slider_bar_horizontal"] = const_845;
         param1["scrollbar_slider_bar_vertical"] = const_823;
         param1["scrollbar_slider_track_horizontal"] = const_970;
         param1["scrollbar_slider_track_vertical"] = const_911;
         param1["scrollable_itemlist"] = const_1266;
         param1["scrollable_itemlist_vertical"] = const_465;
         param1["scrollable_itemlist_horizontal"] = const_946;
         param1["selector"] = const_545;
         param1["selector_list"] = const_690;
         param1["submenu"] = const_989;
         param1["tab_button"] = const_661;
         param1["tab_container_button"] = const_881;
         param1["tab_context"] = const_480;
         param1["tab_content"] = const_924;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_700;
         param1["input"] = const_636;
         param1["toolbar"] = const_1360;
         param1["tooltip"] = const_289;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
