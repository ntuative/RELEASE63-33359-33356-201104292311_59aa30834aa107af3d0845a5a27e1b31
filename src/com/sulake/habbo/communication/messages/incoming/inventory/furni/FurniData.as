package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2405:int;
      
      private var var_1502:String;
      
      private var _objId:int;
      
      private var var_1792:int;
      
      private var _category:int;
      
      private var var_2128:String;
      
      private var var_2807:Boolean;
      
      private var var_2809:Boolean;
      
      private var var_2808:Boolean;
      
      private var var_2262:Boolean;
      
      private var var_2154:int;
      
      private var var_1516:int;
      
      private var var_1994:String = "";
      
      private var var_1875:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2405 = param1;
         this.var_1502 = param2;
         this._objId = param3;
         this.var_1792 = param4;
         this._category = param5;
         this.var_2128 = param6;
         this.var_2807 = param7;
         this.var_2809 = param8;
         this.var_2808 = param9;
         this.var_2262 = param10;
         this.var_2154 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1994 = param1;
         this.var_1516 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2405;
      }
      
      public function get itemType() : String
      {
         return this.var_1502;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1792;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2128;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2807;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2809;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2808;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2262;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2154;
      }
      
      public function get slotId() : String
      {
         return this.var_1994;
      }
      
      public function get songId() : int
      {
         return this.var_1875;
      }
      
      public function get extra() : int
      {
         return this.var_1516;
      }
   }
}
