package com.sulake.habbo.room.events
{
   public class RoomEngineSoundMachineEvent extends RoomEngineObjectEvent
   {
      
      public static const const_917:String = "ROSM_SOUND_MACHINE_INIT";
      
      public static const const_840:String = "ROSM_SOUND_MACHINE_SWITCHED_ON";
      
      public static const const_852:String = "ROSM_SOUND_MACHINE_SWITCHED_OFF";
      
      public static const const_926:String = "ROSM_SOUND_MACHINE_DISPOSE";
      
      public static const const_871:String = "ROSM_JUKEBOX_INIT";
      
      public static const const_1583:String = "ROSM_JUKEBOX_SWITCHED_ON";
      
      public static const const_1824:String = "ROSM_JUKEBOX_SWITCHED_OFF";
      
      public static const const_238:String = "ROSM_JUKEBOX_DISPOSE";
       
      
      public function RoomEngineSoundMachineEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
   }
}
