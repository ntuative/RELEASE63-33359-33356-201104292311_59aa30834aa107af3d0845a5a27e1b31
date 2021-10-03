package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2339:Boolean = false;
      
      private var var_2342:int = 0;
      
      private var var_2341:int = 0;
      
      private var var_2340:int = 0;
      
      private var var_2343:int = 0;
      
      private var var_153:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_413:String = "";
      
      private var _type:int = 0;
      
      private var var_2982:String = "";
      
      private var var_1516:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_181:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2339 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_181 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2339;
      }
      
      public function get wallX() : Number
      {
         return this.var_2342;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_2342 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2341;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_2341 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2340;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_2340 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2343;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_2343 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_153;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_153 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_154;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_181)
         {
            this.var_154 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_413;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_413 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_181)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_181)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_181)
         {
            this._data = param1;
         }
      }
   }
}
