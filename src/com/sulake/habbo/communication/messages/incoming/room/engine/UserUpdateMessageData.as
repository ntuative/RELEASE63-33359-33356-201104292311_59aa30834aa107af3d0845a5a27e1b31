package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_2358:Number = 0;
      
      private var var_2359:Number = 0;
      
      private var var_2355:Number = 0;
      
      private var var_2354:Number = 0;
      
      private var var_413:int = 0;
      
      private var var_2357:int = 0;
      
      private var var_329:Array;
      
      private var var_2356:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_329 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_153 = param3;
         this.var_154 = param4;
         this.var_2358 = param5;
         this.var_413 = param6;
         this.var_2357 = param7;
         this.var_2359 = param8;
         this.var_2355 = param9;
         this.var_2354 = param10;
         this.var_2356 = param11;
         this.var_329 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_153;
      }
      
      public function get z() : Number
      {
         return this.var_154;
      }
      
      public function get localZ() : Number
      {
         return this.var_2358;
      }
      
      public function get targetX() : Number
      {
         return this.var_2359;
      }
      
      public function get targetY() : Number
      {
         return this.var_2355;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2354;
      }
      
      public function get dir() : int
      {
         return this.var_413;
      }
      
      public function get dirHead() : int
      {
         return this.var_2357;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2356;
      }
      
      public function get actions() : Array
      {
         return this.var_329.slice();
      }
   }
}
