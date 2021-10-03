package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_72:String = "HTE_INITIALIZED";
      
      public static const const_36:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_591:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_797:String = "HTE_TOOLBAR_RESIZED";
      
      public static const const_340:String = "HTE_TOOLBAR_STATE_HOTEL_VIEW";
      
      public static const const_305:String = "HTE_TOOLBAR_STATE_ROOM_VIEW";
       
      
      private var var_803:String;
      
      private var var_515:String;
      
      private var var_1224:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_803 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_803;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_515 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_515;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1224 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1224;
      }
   }
}
