package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1017:int;
      
      private var var_804:Boolean;
      
      private var var_2050:Boolean;
      
      private var var_666:String;
      
      private var var_1360:int;
      
      private var var_1969:String;
      
      private var var_1914:String;
      
      private var var_1912:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1912 = param3;
         this.var_1969 = param4;
         this.var_1017 = param5;
         this.var_804 = param6;
         this.var_2050 = param7;
         this.var_666 = param8;
         this.var_1360 = param9;
         this.var_1914 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1017;
      }
      
      public function get online() : Boolean
      {
         return this.var_804;
      }
      
      public function get allowFollow() : Boolean
      {
         return this.var_2050;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get categoryId() : int
      {
         return this.var_1360;
      }
      
      public function get motto() : String
      {
         return this.var_1969;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1914;
      }
      
      public function get realName() : String
      {
         return this.var_1912;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_1017 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_804 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_2050 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_666 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1360 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1969 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1914 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1912 = param1;
      }
   }
}
