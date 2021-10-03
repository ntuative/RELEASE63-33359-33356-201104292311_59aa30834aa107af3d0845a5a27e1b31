package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_577:String = "ROFCAE_DICE_OFF";
      
      public static const const_472:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_640:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_528:String = "ROFCAE_STICKIE";
      
      public static const const_596:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_492:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_594:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_559:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_562:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_639:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_469:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_483:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_501:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_614:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_556:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_373:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_476:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
