package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2057:int = 0;
      
      private var var_2056:int = 0;
      
      private var var_2433:int = 0;
      
      private var var_2432:Boolean = false;
      
      private var var_2434:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2057 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2056 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2433 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2432 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2434 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2057;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2056;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2433;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2432;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2434;
      }
   }
}
