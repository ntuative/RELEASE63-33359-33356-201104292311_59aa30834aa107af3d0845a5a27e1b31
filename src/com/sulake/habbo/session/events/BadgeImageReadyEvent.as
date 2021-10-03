package com.sulake.habbo.session.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class BadgeImageReadyEvent extends Event
   {
      
      public static const const_151:String = "BIRE_BADGE_IMAGE_READY";
       
      
      private var var_294:String;
      
      private var var_46:BitmapData;
      
      public function BadgeImageReadyEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_151,param3,param4);
         this.var_294 = param1;
         this.var_46 = param2;
      }
      
      public function get badgeId() : String
      {
         return this.var_294;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_46;
      }
   }
}
