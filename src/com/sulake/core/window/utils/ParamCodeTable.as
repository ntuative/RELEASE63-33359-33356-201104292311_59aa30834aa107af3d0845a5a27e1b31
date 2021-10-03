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
         param1["null"] = const_200;
         param1["bound_to_parent_rect"] = const_108;
         param1["child_window"] = const_1310;
         param1["embedded_controller"] = const_1089;
         param1["resize_to_accommodate_children"] = const_70;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_941;
         param1["mouse_dragging_target"] = const_255;
         param1["mouse_dragging_trigger"] = const_426;
         param1["mouse_scaling_target"] = const_339;
         param1["mouse_scaling_trigger"] = const_482;
         param1["horizontal_mouse_scaling_trigger"] = const_237;
         param1["vertical_mouse_scaling_trigger"] = const_275;
         param1["observe_parent_input_events"] = const_1172;
         param1["optimize_region_to_layout_size"] = const_597;
         param1["parent_window"] = const_1204;
         param1["relative_horizontal_scale_center"] = const_198;
         param1["relative_horizontal_scale_fixed"] = const_141;
         param1["relative_horizontal_scale_move"] = const_381;
         param1["relative_horizontal_scale_strech"] = const_436;
         param1["relative_scale_center"] = const_1112;
         param1["relative_scale_fixed"] = const_720;
         param1["relative_scale_move"] = const_1115;
         param1["relative_scale_strech"] = const_1295;
         param1["relative_vertical_scale_center"] = const_217;
         param1["relative_vertical_scale_fixed"] = const_160;
         param1["relative_vertical_scale_move"] = const_265;
         param1["relative_vertical_scale_strech"] = const_352;
         param1["on_resize_align_left"] = const_806;
         param1["on_resize_align_right"] = const_628;
         param1["on_resize_align_center"] = const_540;
         param1["on_resize_align_top"] = const_686;
         param1["on_resize_align_bottom"] = const_533;
         param1["on_resize_align_middle"] = const_603;
         param1["on_accommodate_align_left"] = const_1258;
         param1["on_accommodate_align_right"] = const_612;
         param1["on_accommodate_align_center"] = const_940;
         param1["on_accommodate_align_top"] = const_1242;
         param1["on_accommodate_align_bottom"] = const_605;
         param1["on_accommodate_align_middle"] = const_716;
         param1["route_input_events_to_parent"] = const_599;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1249;
         param1["scalable_with_mouse"] = const_1081;
         param1["reflect_horizontal_resize_to_parent"] = const_624;
         param1["reflect_vertical_resize_to_parent"] = const_626;
         param1["reflect_resize_to_parent"] = const_354;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1183;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
