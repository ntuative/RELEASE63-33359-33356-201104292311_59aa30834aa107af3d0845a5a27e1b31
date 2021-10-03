package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1783:String = "pricing_model_unknown";
      
      public static const const_412:String = "pricing_model_single";
      
      public static const const_411:String = "pricing_model_multi";
      
      public static const const_582:String = "pricing_model_bundle";
      
      public static const const_1753:String = "price_type_none";
      
      public static const const_901:String = "price_type_credits";
      
      public static const const_1135:String = "price_type_activitypoints";
      
      public static const const_1207:String = "price_type_credits_and_activitypoints";
       
      
      private var var_845:String;
      
      private var var_1296:String;
      
      private var _offerId:int;
      
      private var var_2042:String;
      
      private var var_1297:int;
      
      private var var_1298:int;
      
      private var var_2043:int;
      
      private var var_355:ICatalogPage;
      
      private var var_679:IProductContainer;
      
      private var var_2810:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_2042 = param2;
         this.var_1297 = param3;
         this.var_1298 = param4;
         this.var_2043 = param5;
         this.var_355 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_355;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_2042;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1297;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1298;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2043;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_679;
      }
      
      public function get pricingModel() : String
      {
         return this.var_845;
      }
      
      public function get priceType() : String
      {
         return this.var_1296;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2810;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2810 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_2042 = "";
         this.var_1297 = 0;
         this.var_1298 = 0;
         this.var_2043 = 0;
         this.var_355 = null;
         if(this.var_679 != null)
         {
            this.var_679.dispose();
            this.var_679 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_845)
         {
            case const_412:
               this.var_679 = new SingleProductContainer(this,param1);
               break;
            case const_411:
               this.var_679 = new MultiProductContainer(this,param1);
               break;
            case const_582:
               this.var_679 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_845);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_845 = const_412;
            }
            else
            {
               this.var_845 = const_411;
            }
         }
         else if(param1.length > 1)
         {
            this.var_845 = const_582;
         }
         else
         {
            this.var_845 = const_1783;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1297 > 0 && this.var_1298 > 0)
         {
            this.var_1296 = const_1207;
         }
         else if(this.var_1297 > 0)
         {
            this.var_1296 = const_901;
         }
         else if(this.var_1298 > 0)
         {
            this.var_1296 = const_1135;
         }
         else
         {
            this.var_1296 = const_1753;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_355.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_679.products)
         {
            _loc4_ = this.var_355.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
