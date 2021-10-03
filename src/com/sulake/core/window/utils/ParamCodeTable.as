package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_133;
         param1["bound_to_parent_rect"] = const_88;
         param1["child_window"] = const_974;
         param1["embedded_controller"] = const_315;
         param1["resize_to_accommodate_children"] = const_65;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_715;
         param1["mouse_dragging_target"] = const_236;
         param1["mouse_dragging_trigger"] = const_307;
         param1["mouse_scaling_target"] = const_262;
         param1["mouse_scaling_trigger"] = const_402;
         param1["horizontal_mouse_scaling_trigger"] = const_219;
         param1["vertical_mouse_scaling_trigger"] = const_229;
         param1["observe_parent_input_events"] = const_811;
         param1["optimize_region_to_layout_size"] = const_373;
         param1["parent_window"] = const_867;
         param1["relative_horizontal_scale_center"] = const_176;
         param1["relative_horizontal_scale_fixed"] = const_137;
         param1["relative_horizontal_scale_move"] = const_323;
         param1["relative_horizontal_scale_strech"] = const_271;
         param1["relative_scale_center"] = const_923;
         param1["relative_scale_fixed"] = const_621;
         param1["relative_scale_move"] = const_908;
         param1["relative_scale_strech"] = const_1021;
         param1["relative_vertical_scale_center"] = const_161;
         param1["relative_vertical_scale_fixed"] = const_127;
         param1["relative_vertical_scale_move"] = const_311;
         param1["relative_vertical_scale_strech"] = const_261;
         param1["on_resize_align_left"] = const_557;
         param1["on_resize_align_right"] = const_486;
         param1["on_resize_align_center"] = const_436;
         param1["on_resize_align_top"] = const_647;
         param1["on_resize_align_bottom"] = const_489;
         param1["on_resize_align_middle"] = const_399;
         param1["on_accommodate_align_left"] = const_942;
         param1["on_accommodate_align_right"] = const_378;
         param1["on_accommodate_align_center"] = const_721;
         param1["on_accommodate_align_top"] = const_844;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_716;
         param1["route_input_events_to_parent"] = const_472;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_813;
         param1["scalable_with_mouse"] = const_874;
         param1["reflect_horizontal_resize_to_parent"] = const_452;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_270;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
