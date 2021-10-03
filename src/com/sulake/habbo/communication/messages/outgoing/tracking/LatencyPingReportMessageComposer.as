package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2614:int;
      
      private var var_2615:int;
      
      private var var_2616:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2614 = param1;
         this.var_2615 = param2;
         this.var_2616 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2614,this.var_2615,this.var_2616];
      }
      
      public function dispose() : void
      {
      }
   }
}
