package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1931:int;
      
      private var var_2637:int;
      
      private var var_1386:int;
      
      private var var_2636:int;
      
      private var var_112:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1931 = param1.readInteger();
         this.var_2637 = param1.readInteger();
         this.var_1386 = param1.readInteger();
         this.var_2636 = param1.readInteger();
         this.var_112 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1931);
      }
      
      public function get callId() : int
      {
         return this.var_1931;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2637;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1386;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2636;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_112;
      }
   }
}
