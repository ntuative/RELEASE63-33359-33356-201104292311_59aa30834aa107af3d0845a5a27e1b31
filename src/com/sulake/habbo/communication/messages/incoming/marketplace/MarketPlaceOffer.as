package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2620:int;
      
      private var var_2128:String;
      
      private var var_1835:int;
      
      private var var_404:int;
      
      private var var_2621:int = -1;
      
      private var var_2539:int;
      
      private var var_1990:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2620 = param3;
         this.var_2128 = param4;
         this.var_1835 = param5;
         this.var_404 = param6;
         this.var_2621 = param7;
         this.var_2539 = param8;
         this.var_1990 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2620;
      }
      
      public function get stuffData() : String
      {
         return this.var_2128;
      }
      
      public function get price() : int
      {
         return this.var_1835;
      }
      
      public function get status() : int
      {
         return this.var_404;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2621;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2539;
      }
      
      public function get offerCount() : int
      {
         return this.var_1990;
      }
   }
}
