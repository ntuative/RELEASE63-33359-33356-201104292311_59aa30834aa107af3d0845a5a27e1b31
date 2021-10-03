package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_666:String;
      
      private var var_2435:String;
      
      private var var_1017:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_666 = param1;
         this.var_1017 = param2;
         this.var_2435 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get race() : String
      {
         return this.var_2435;
      }
      
      public function get gender() : String
      {
         return this.var_1017;
      }
   }
}
