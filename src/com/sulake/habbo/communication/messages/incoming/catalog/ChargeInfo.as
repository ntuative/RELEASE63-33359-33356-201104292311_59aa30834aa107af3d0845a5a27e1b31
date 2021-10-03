package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2279:int;
      
      private var var_2277:int;
      
      private var var_1297:int;
      
      private var var_1298:int;
      
      private var var_2043:int;
      
      private var var_2278:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2279 = param1.readInteger();
         this.var_2277 = param1.readInteger();
         this.var_1297 = param1.readInteger();
         this.var_1298 = param1.readInteger();
         this.var_2043 = param1.readInteger();
         this.var_2278 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2279;
      }
      
      public function get charges() : int
      {
         return this.var_2277;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1297;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1298;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2278;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2043;
      }
   }
}
