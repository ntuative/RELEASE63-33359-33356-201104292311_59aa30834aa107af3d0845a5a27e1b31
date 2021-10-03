package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2831:int;
      
      private var var_2828:int;
      
      private var var_2830:String;
      
      private var var_2829:int;
      
      private var var_2827:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2831 = param1;
         this.var_2828 = param2;
         this.var_2830 = param3;
         this.var_2829 = param4;
         this.var_2827 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2831,this.var_2828,this.var_2830,this.var_2829,int(this.var_2827)];
      }
      
      public function dispose() : void
      {
      }
   }
}
