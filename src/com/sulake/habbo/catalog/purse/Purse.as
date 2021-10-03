package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_211:int = 0;
       
      
      private var var_1661:int = 0;
      
      private var var_1596:Dictionary;
      
      private var var_2057:int = 0;
      
      private var var_2056:int = 0;
      
      private var var_2434:Boolean = false;
      
      private var var_2602:int = 0;
      
      private var var_2608:int = 0;
      
      public function Purse()
      {
         this.var_1596 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1661;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1661 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2057;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2057 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2056;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2056 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2057 > 0 || this.var_2056 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2434;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2434 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2602;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2602 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2608;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2608 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1596;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1596 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1596[param1];
      }
   }
}
