package com.sulake.habbo.widget.events
{
   public class RoomWidgetSpamWallPostItEditEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_490:String = "RWSWPUE_OPEN_EDITOR";
       
      
      private var var_196:int;
      
      private var var_411:String;
      
      public function RoomWidgetSpamWallPostItEditEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.var_196 = param2;
         this.var_411 = param3;
      }
      
      public function get location() : String
      {
         return this.var_411;
      }
      
      public function get objectId() : int
      {
         return this.var_196;
      }
   }
}
