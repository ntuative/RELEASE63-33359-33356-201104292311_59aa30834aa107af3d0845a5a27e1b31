package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_413:int = 0;
      
      private var var_537:int = 0;
      
      private var var_658:int = 0;
      
      private var var_181:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_181 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_181)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_181)
         {
            this._name = param1;
         }
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
   }
}
