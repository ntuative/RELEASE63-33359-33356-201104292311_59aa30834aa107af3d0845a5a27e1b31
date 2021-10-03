package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2539:int;
      
      private var var_2541:int;
      
      private var var_2542:int;
      
      private var _dayOffsets:Array;
      
      private var var_1867:Array;
      
      private var var_1866:Array;
      
      private var var_2540:int;
      
      private var var_2543:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2539;
      }
      
      public function get offerCount() : int
      {
         return this.var_2541;
      }
      
      public function get historyLength() : int
      {
         return this.var_2542;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1867;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1866;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2540;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2543;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2539 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2541 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2542 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1867 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1866 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2540 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2543 = param1;
      }
   }
}
