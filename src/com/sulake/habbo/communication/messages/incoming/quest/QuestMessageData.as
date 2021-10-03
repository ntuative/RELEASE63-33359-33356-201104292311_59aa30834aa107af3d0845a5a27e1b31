package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_1823:String;
      
      private var var_2475:int;
      
      private var var_2474:int;
      
      private var var_2043:int;
      
      private var _id:int;
      
      private var var_1820:Boolean;
      
      private var _type:String;
      
      private var var_1822:String;
      
      private var _rewardCurrencyAmount:int;
      
      private var var_1821:String;
      
      private var var_2472:int;
      
      private var var_2473:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1823 = param1.readString();
         this.var_2475 = param1.readInteger();
         this.var_2474 = param1.readInteger();
         this.var_2043 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_1820 = param1.readBoolean();
         this._type = param1.readString();
         this.var_1822 = param1.readString();
         this._rewardCurrencyAmount = param1.readInteger();
         this.var_1821 = param1.readString();
         this.var_2472 = param1.readInteger();
         this.var_2473 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_1822 = "";
         this._rewardCurrencyAmount = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1823;
      }
      
      public function get localizationCode() : String
      {
         return this.var_1821;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2475;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2474;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2043;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_1820;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_1822;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this._rewardCurrencyAmount;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2472;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2473;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_1823;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_1821;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_1820 = param1;
      }
   }
}
