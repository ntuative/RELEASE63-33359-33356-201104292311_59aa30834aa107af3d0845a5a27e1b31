package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_568:int = 0;
      
      public static const const_222:int = 1;
      
      public static const const_122:int = 2;
      
      public static const const_949:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1691:String;
      
      private var var_2176:int;
      
      private var var_1360:int;
      
      private var var_2380:int;
      
      private var var_2379:int;
      
      private var var_872:Array;
      
      private var var_2376:Array;
      
      private var var_2375:int;
      
      private var var_2269:Boolean;
      
      private var var_2378:Boolean;
      
      private var var_2381:Boolean;
      
      private var var_2377:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2269;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2269 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2378;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2378 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2381;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2381 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2377;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2377 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1691;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1691 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2176;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2176 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1360;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1360 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2380;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2380 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2379;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_872;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_872 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2376;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2376 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2375;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2375 = param1;
      }
   }
}
