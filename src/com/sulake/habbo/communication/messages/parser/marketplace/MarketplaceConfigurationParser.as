package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1555:Boolean;
      
      private var var_2444:int;
      
      private var var_1795:int;
      
      private var var_1794:int;
      
      private var var_2442:int;
      
      private var var_2447:int;
      
      private var var_2441:int;
      
      private var var_2446:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1555;
      }
      
      public function get commission() : int
      {
         return this.var_2444;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1795;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1794;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2447;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2442;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2441;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2446;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1555 = param1.readBoolean();
         this.var_2444 = param1.readInteger();
         this.var_1795 = param1.readInteger();
         this.var_1794 = param1.readInteger();
         this.var_2447 = param1.readInteger();
         this.var_2442 = param1.readInteger();
         this.var_2441 = param1.readInteger();
         this.var_2446 = param1.readInteger();
         return true;
      }
   }
}
