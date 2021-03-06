package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1120:String = "M";
      
      public static const const_1574:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_154:Number = 0;
      
      private var var_413:int = 0;
      
      private var _name:String = "";
      
      private var var_1623:int = 0;
      
      private var var_892:String = "";
      
      private var var_666:String = "";
      
      private var var_2244:String = "";
      
      private var var_2189:int;
      
      private var var_2243:int = 0;
      
      private var var_2241:String = "";
      
      private var var_2242:int = 0;
      
      private var var_2240:int = 0;
      
      private var var_2406:String = "";
      
      private var var_181:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get userType() : int
      {
         return this.var_1623;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_1623 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_892;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_892 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_666 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2244;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_2244 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2189;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2189 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2243;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2243 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2241;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_2241 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2242;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2242 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2240;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_181)
         {
            this.var_2240 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2406;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_181)
         {
            this.var_2406 = param1;
         }
      }
   }
}
