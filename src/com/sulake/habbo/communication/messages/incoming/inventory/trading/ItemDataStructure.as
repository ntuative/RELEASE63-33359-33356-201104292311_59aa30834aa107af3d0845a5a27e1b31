package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2282:int;
      
      private var var_1502:String;
      
      private var var_2874:int;
      
      private var var_2877:int;
      
      private var _category:int;
      
      private var var_2128:String;
      
      private var var_1516:int;
      
      private var var_2878:int;
      
      private var var_2876:int;
      
      private var var_2879:int;
      
      private var var_2873:int;
      
      private var var_2875:Boolean;
      
      private var var_3002:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2282 = param1;
         this.var_1502 = param2;
         this.var_2874 = param3;
         this.var_2877 = param4;
         this._category = param5;
         this.var_2128 = param6;
         this.var_1516 = param7;
         this.var_2878 = param8;
         this.var_2876 = param9;
         this.var_2879 = param10;
         this.var_2873 = param11;
         this.var_2875 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2282;
      }
      
      public function get itemType() : String
      {
         return this.var_1502;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2874;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2877;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2128;
      }
      
      public function get extra() : int
      {
         return this.var_1516;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2878;
      }
      
      public function get creationDay() : int
      {
         return this.var_2876;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2879;
      }
      
      public function get creationYear() : int
      {
         return this.var_2873;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2875;
      }
      
      public function get songID() : int
      {
         return this.var_1516;
      }
   }
}
