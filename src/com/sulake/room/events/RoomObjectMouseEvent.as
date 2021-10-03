package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_147:String = "ROE_MOUSE_CLICK";
      
      public static const const_1898:String = "ROE_MOUSE_ENTER";
      
      public static const const_579:String = "ROE_MOUSE_MOVE";
      
      public static const const_2018:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2008:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_590:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1888:String = "";
      
      private var var_2453:Boolean;
      
      private var var_2455:Boolean;
      
      private var var_2456:Boolean;
      
      private var var_2457:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1888 = param2;
         this.var_2453 = param5;
         this.var_2455 = param6;
         this.var_2456 = param7;
         this.var_2457 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1888;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2453;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2455;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2456;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2457;
      }
   }
}
