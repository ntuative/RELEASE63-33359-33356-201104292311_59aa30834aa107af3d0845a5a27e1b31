package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_142:String = "RSPE_VOTE_QUESTION";
      
      public static const const_158:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1289:String = "";
      
      private var var_1373:Array;
      
      private var var_1285:Array;
      
      private var var_2033:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1373 = [];
         this.var_1285 = [];
         super(param1,param2,param7,param8);
         this.var_1289 = param3;
         this.var_1373 = param4;
         this.var_1285 = param5;
         if(this.var_1285 == null)
         {
            this.var_1285 = [];
         }
         this.var_2033 = param6;
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
