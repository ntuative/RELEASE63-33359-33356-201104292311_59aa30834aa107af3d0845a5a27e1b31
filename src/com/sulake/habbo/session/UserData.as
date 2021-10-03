package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_892:String = "";
      
      private var var_666:String = "";
      
      private var var_2244:String = "";
      
      private var var_2189:int;
      
      private var var_2243:int = 0;
      
      private var var_2241:String = "";
      
      private var var_2242:int = 0;
      
      private var var_2240:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2189;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2189 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_892;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_892 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_666 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2244;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2244 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2243;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2243 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2241;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2241 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2242;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2242 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2240;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2240 = param1;
      }
   }
}
