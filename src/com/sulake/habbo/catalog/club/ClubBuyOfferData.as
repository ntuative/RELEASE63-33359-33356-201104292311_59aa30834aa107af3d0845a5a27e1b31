package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1793:String;
      
      private var var_1835:int;
      
      private var var_2496:Boolean;
      
      private var var_2493:Boolean;
      
      private var var_2497:int;
      
      private var var_2498:int;
      
      private var var_355:ICatalogPage;
      
      private var var_2494:int;
      
      private var var_2500:int;
      
      private var var_2499:int;
      
      private var var_1391:String;
      
      private var var_2495:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1793 = param2;
         this.var_1835 = param3;
         this.var_2496 = param4;
         this.var_2493 = param5;
         this.var_2497 = param6;
         this.var_2498 = param7;
         this.var_2494 = param8;
         this.var_2500 = param9;
         this.var_2499 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1391;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1391 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1793;
      }
      
      public function get price() : int
      {
         return this.var_1835;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2496;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2493;
      }
      
      public function get periods() : int
      {
         return this.var_2497;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2498;
      }
      
      public function get year() : int
      {
         return this.var_2494;
      }
      
      public function get month() : int
      {
         return this.var_2500;
      }
      
      public function get day() : int
      {
         return this.var_2499;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_211;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1835;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_355;
      }
      
      public function get priceType() : String
      {
         return Offer.const_901;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1793;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_355 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2495;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2495 = param1;
      }
   }
}
