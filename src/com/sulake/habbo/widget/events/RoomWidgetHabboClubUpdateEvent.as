package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_266:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2397:int = 0;
      
      private var var_2396:int = 0;
      
      private var var_2399:int = 0;
      
      private var var_2398:Boolean = false;
      
      private var var_2202:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_266,param6,param7);
         this.var_2397 = param1;
         this.var_2396 = param2;
         this.var_2399 = param3;
         this.var_2398 = param4;
         this.var_2202 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2397;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2396;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2399;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2398;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2202;
      }
   }
}
