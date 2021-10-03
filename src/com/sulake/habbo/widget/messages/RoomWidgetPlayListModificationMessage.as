package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPlayListModificationMessage extends RoomWidgetMessage
   {
      
      public static const const_954:String = "RWPLAM_ADD_TO_PLAYLIST";
      
      public static const const_705:String = "RWPLAM_REMOVE_FROM_PLAYLIST";
       
      
      private var var_2555:int;
      
      private var var_2802:int;
      
      public function RoomWidgetPlayListModificationMessage(param1:String, param2:int = -1, param3:int = -1)
      {
         super(param1);
         this.var_2802 = param2;
         this.var_2555 = param3;
      }
      
      public function get diskId() : int
      {
         return this.var_2555;
      }
      
      public function get slotNumber() : int
      {
         return this.var_2802;
      }
   }
}
