package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_63:String = "i";
      
      public static const const_78:String = "s";
      
      public static const const_219:String = "e";
       
      
      private var var_1353:String;
      
      private var var_2471:int;
      
      private var var_1088:String;
      
      private var _productCount:int;
      
      private var var_1632:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1353 = param1.readString();
         this.var_2471 = param1.readInteger();
         this.var_1088 = param1.readString();
         this._productCount = param1.readInteger();
         this.var_1632 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1353;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2471;
      }
      
      public function get extraParam() : String
      {
         return this.var_1088;
      }
      
      public function get productCount() : int
      {
         return this._productCount;
      }
      
      public function get expiration() : int
      {
         return this.var_1632;
      }
   }
}
