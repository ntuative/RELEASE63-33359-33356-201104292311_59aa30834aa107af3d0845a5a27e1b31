package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_561:String = "RWUAM_WHISPER_USER";
      
      public static const const_479:String = "RWUAM_IGNORE_USER";
      
      public static const const_589:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_395:String = "RWUAM_KICK_USER";
      
      public static const const_564:String = "RWUAM_BAN_USER";
      
      public static const const_546:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_537:String = "RWUAM_RESPECT_USER";
      
      public static const const_619:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_630:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_637:String = "RWUAM_START_TRADING";
      
      public static const const_820:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_629:String = "RWUAM_KICK_BOT";
      
      public static const const_530:String = "RWUAM_REPORT";
      
      public static const const_547:String = "RWUAM_PICKUP_PET";
      
      public static const const_1585:String = "RWUAM_TRAIN_PET";
      
      public static const const_527:String = " RWUAM_RESPECT_PET";
      
      public static const const_376:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_891:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
