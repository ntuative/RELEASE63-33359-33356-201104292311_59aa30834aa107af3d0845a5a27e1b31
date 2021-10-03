package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_977:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2831:int;
      
      private var var_2828:int;
      
      private var _color:uint;
      
      private var var_1275:int;
      
      private var var_2898:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_977);
         this.var_2831 = param1;
         this.var_2828 = param2;
         this._color = param3;
         this.var_1275 = param4;
         this.var_2898 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2831;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2828;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1275;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2898;
      }
   }
}
