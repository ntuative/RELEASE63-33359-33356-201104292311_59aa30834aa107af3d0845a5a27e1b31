package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2491:int = 0;
      
      private var var_1397:String = "";
      
      private var var_1722:String = "";
      
      private var var_2301:String = "";
      
      private var var_2650:String = "";
      
      private var var_1937:int = 0;
      
      private var var_2652:int = 0;
      
      private var var_2653:int = 0;
      
      private var var_1398:int = 0;
      
      private var var_2651:int = 0;
      
      private var var_1399:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2491 = param1;
         this.var_1397 = param2;
         this.var_1722 = param3;
         this.var_2301 = param4;
         this.var_2650 = param5;
         if(param6)
         {
            this.var_1937 = 1;
         }
         else
         {
            this.var_1937 = 0;
         }
         this.var_2652 = param7;
         this.var_2653 = param8;
         this.var_1398 = param9;
         this.var_2651 = param10;
         this.var_1399 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2491,this.var_1397,this.var_1722,this.var_2301,this.var_2650,this.var_1937,this.var_2652,this.var_2653,this.var_1398,this.var_2651,this.var_1399];
      }
   }
}
