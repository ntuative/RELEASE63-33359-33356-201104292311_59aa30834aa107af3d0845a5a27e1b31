package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_600:QuestsList;
      
      private var var_498:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_353:QuestTracker;
      
      private var var_921:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_353 = new QuestTracker(this._questEngine);
         this.var_600 = new QuestsList(this._questEngine);
         this.var_498 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_921 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_600.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_600.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_353.onQuest(param1);
         this.var_498.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_353.onQuestCompleted(param1);
         this.var_498.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_353.onQuestCancelled();
         this.var_498.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_353.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_600.onRoomExit();
         this.var_353.onRoomExit();
         this.var_498.onRoomExit();
         this.var_921.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_353.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_600)
         {
            this.var_600.dispose();
            this.var_600 = null;
         }
         if(this.var_353)
         {
            this.var_353.dispose();
            this.var_353 = null;
         }
         if(this.var_498)
         {
            this.var_498.dispose();
            this.var_498 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_921)
         {
            this.var_921.dispose();
            this.var_921 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_600;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_498;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_353;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_921;
      }
   }
}
