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
         param1["background"] = const_908;
         param1["bitmap"] = const_882;
         param1["border"] = const_920;
         param1["border_notify"] = const_1736;
         param1["button"] = const_567;
         param1["button_thick"] = const_713;
         param1["button_icon"] = const_1774;
         param1["button_group_left"] = const_770;
         param1["button_group_center"] = const_768;
         param1["button_group_right"] = const_757;
         param1["canvas"] = const_707;
         param1["checkbox"] = const_899;
         param1["closebutton"] = const_1113;
         param1["container"] = const_432;
         param1["container_button"] = const_698;
         param1["display_object_wrapper"] = const_779;
         param1["dropmenu"] = const_583;
         param1["dropmenu_item"] = const_515;
         param1["frame"] = const_379;
         param1["frame_notify"] = const_1788;
         param1["header"] = const_781;
         param1["html"] = const_1142;
         param1["icon"] = const_1100;
         param1["itemgrid"] = const_1232;
         param1["itemgrid_horizontal"] = const_566;
         param1["itemgrid_vertical"] = const_833;
         param1["itemlist"] = const_1110;
         param1["itemlist_horizontal"] = const_441;
         param1["itemlist_vertical"] = const_385;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1816;
         param1["menu"] = const_1609;
         param1["menu_item"] = const_1612;
         param1["submenu"] = const_1164;
         param1["minimizebox"] = const_1777;
         param1["notify"] = const_1771;
         param1["null"] = const_726;
         param1["password"] = const_955;
         param1["radiobutton"] = const_813;
         param1["region"] = const_552;
         param1["restorebox"] = const_1656;
         param1["scaler"] = const_471;
         param1["scaler_horizontal"] = const_1580;
         param1["scaler_vertical"] = const_1676;
         param1["scrollbar_horizontal"] = const_513;
         param1["scrollbar_vertical"] = const_822;
         param1["scrollbar_slider_button_up"] = const_1213;
         param1["scrollbar_slider_button_down"] = const_1117;
         param1["scrollbar_slider_button_left"] = const_1187;
         param1["scrollbar_slider_button_right"] = const_1097;
         param1["scrollbar_slider_bar_horizontal"] = const_1251;
         param1["scrollbar_slider_bar_vertical"] = const_1216;
         param1["scrollbar_slider_track_horizontal"] = const_1080;
         param1["scrollbar_slider_track_vertical"] = const_1263;
         param1["scrollable_itemlist"] = const_1603;
         param1["scrollable_itemlist_vertical"] = const_580;
         param1["scrollable_itemlist_horizontal"] = const_1096;
         param1["selector"] = const_740;
         param1["selector_list"] = const_930;
         param1["submenu"] = const_1164;
         param1["tab_button"] = const_814;
         param1["tab_container_button"] = const_1214;
         param1["tab_context"] = const_407;
         param1["tab_content"] = const_1256;
         param1["tab_selector"] = const_839;
         param1["text"] = const_570;
         param1["input"] = const_714;
         param1["toolbar"] = const_1613;
         param1["tooltip"] = const_431;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
