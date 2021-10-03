package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2467:String;
      
      private var var_2465:Class;
      
      private var var_2466:Class;
      
      private var var_1808:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2467 = param1;
         this.var_2465 = param2;
         this.var_2466 = param3;
         if(rest == null)
         {
            this.var_1808 = new Array();
         }
         else
         {
            this.var_1808 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2467;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2465;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2466;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1808;
      }
   }
}
