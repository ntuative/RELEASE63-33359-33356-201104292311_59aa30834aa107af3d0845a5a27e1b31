package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1017:int;
      
      private var var_804:Boolean;
      
      private var var_1802:Boolean;
      
      private var var_666:String;
      
      private var var_1360:int;
      
      private var var_1969:String;
      
      private var var_1914:String;
      
      private var var_1912:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1017 = param1.readInteger();
         this.var_804 = param1.readBoolean();
         this.var_1802 = param1.readBoolean();
         this.var_666 = param1.readString();
         this.var_1360 = param1.readInteger();
         this.var_1969 = param1.readString();
         this.var_1914 = param1.readString();
         this.var_1912 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1802;
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
   }
}
