package com.sulake.habbo.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_435:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_2028:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_435,false,false);
         this.var_2028 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_2028;
      }
   }
}
