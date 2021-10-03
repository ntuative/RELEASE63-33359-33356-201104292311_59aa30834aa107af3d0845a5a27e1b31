package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_142:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_158:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1289:String;
      
      private var var_1373:Array;
      
      private var var_1285:Array;
      
      private var var_2033:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1289 = param2;
         this.var_1373 = param3;
         this.var_1285 = param4;
         if(this.var_1285 == null)
         {
            this.var_1285 = [];
         }
         this.var_2033 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1289;
      }
      
      public function get choices() : Array
      {
         return this.var_1373.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1285.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2033;
      }
   }
}
