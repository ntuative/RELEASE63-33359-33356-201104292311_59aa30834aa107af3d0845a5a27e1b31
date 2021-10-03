package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1402:int;
      
      private var var_1911:int;
      
      private var var_2257:int;
      
      private var var_1723:int;
      
      private var var_1401:int;
      
      private var var_2254:String = "";
      
      private var var_2256:String = "";
      
      private var var_2255:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1402 = param1.readInteger();
         this.var_2254 = param1.readString();
         this.var_1911 = param1.readInteger();
         this.var_2257 = param1.readInteger();
         this.var_1723 = param1.readInteger();
         this.var_1401 = param1.readInteger();
         this.var_2255 = param1.readInteger();
         this.var_2256 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1402;
      }
      
      public function get points() : int
      {
         return this.var_1911;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2257;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1723;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1401;
      }
      
      public function get badgeID() : String
      {
         return this.var_2254;
      }
      
      public function get achievementID() : int
      {
         return this.var_2255;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2256;
      }
   }
}
