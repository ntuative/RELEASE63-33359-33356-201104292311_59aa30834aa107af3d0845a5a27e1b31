package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1793:String;
      
      private var var_1835:int;
      
      private var var_2496:Boolean;
      
      private var var_2493:Boolean;
      
      private var var_2497:int;
      
      private var var_2498:int;
      
      private var var_2494:int;
      
      private var var_2500:int;
      
      private var var_2499:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1793 = param1.readString();
         this.var_1835 = param1.readInteger();
         this.var_2496 = param1.readBoolean();
         this.var_2493 = param1.readBoolean();
         this.var_2497 = param1.readInteger();
         this.var_2498 = param1.readInteger();
         this.var_2494 = param1.readInteger();
         this.var_2500 = param1.readInteger();
         this.var_2499 = param1.readInteger();
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
   }
}
