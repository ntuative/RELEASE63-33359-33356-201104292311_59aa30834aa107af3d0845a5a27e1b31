package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_413:int = 0;
      
      private var var_537:int = 0;
      
      private var var_658:int = 0;
      
      private var _type:int = 0;
      
      private var var_2982:String = "";
      
      private var var_1516:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2154:int = 0;
      
      private var var_2460:String = null;
      
      private var var_181:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_181 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_181)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_413;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_413 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_537;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_537 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_658;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_658 = param1;
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
      
      public function get staticClass() : String
      {
         return this.var_2460;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_2460 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1516;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_1516 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2154;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2154 = param1;
         }
      }
   }
}
