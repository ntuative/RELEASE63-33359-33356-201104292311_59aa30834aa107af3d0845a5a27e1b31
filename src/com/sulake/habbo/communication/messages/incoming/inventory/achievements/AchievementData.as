package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1402:int;
      
      private var var_294:String;
      
      private var var_2726:int;
      
      private var var_2257:int;
      
      private var var_1723:int;
      
      private var var_2727:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1402 = param1.readInteger();
         this.var_294 = param1.readString();
         this.var_2726 = param1.readInteger();
         this.var_2257 = param1.readInteger();
         this.var_1723 = param1.readInteger();
         this.var_2727 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_294;
      }
      
      public function get level() : int
      {
         return this.var_1402;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2726;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2257;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1723;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2727;
      }
   }
}
