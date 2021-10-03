package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2512:int;
      
      private var var_2515:int;
      
      private var var_804:Boolean;
      
      private var var_2511:int;
      
      private var var_2513:int;
      
      private var var_2514:int;
      
      private var var_2516:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2512 = param1.readInteger();
         this.var_2515 = param1.readInteger();
         this.var_804 = param1.readBoolean();
         this.var_2511 = param1.readInteger();
         this.var_2513 = param1.readInteger();
         this.var_2514 = param1.readInteger();
         this.var_2516 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2512;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2515;
      }
      
      public function get online() : Boolean
      {
         return this.var_804;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2511;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2513;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2514;
      }
      
      public function get banCount() : int
      {
         return this.var_2516;
      }
   }
}
