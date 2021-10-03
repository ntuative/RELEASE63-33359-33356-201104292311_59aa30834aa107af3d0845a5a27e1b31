package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_958:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_262:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_958,param2,param3);
         this.var_262 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_262;
      }
   }
}
