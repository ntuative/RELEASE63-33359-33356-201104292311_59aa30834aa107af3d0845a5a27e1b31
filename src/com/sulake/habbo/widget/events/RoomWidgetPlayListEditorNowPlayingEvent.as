package com.sulake.habbo.widget.events
{
   public class RoomWidgetPlayListEditorNowPlayingEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_136:String = "RWPLENPE_USER_PLAY_SONG";
      
      public static const const_123:String = "RWPLENPW_USER_STOP_SONG";
      
      public static const const_105:String = "RWPLENPE_SONG_CHANGED";
       
      
      private var _id:int;
      
      private var var_1316:int;
      
      private var _priority:int;
      
      public function RoomWidgetPlayListEditorNowPlayingEvent(param1:String, param2:int, param3:int, param4:int, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this._id = param2;
         this.var_1316 = param3;
         this._priority = param4;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get position() : int
      {
         return this.var_1316;
      }
      
      public function get priority() : int
      {
         return this._priority;
      }
   }
}
