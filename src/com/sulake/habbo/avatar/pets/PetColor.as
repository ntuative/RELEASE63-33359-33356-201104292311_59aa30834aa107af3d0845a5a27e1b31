package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var _rgb:uint;
      
      private var var_1844:uint;
      
      private var var_1847:uint;
      
      private var _b:uint;
      
      private var var_805:ColorTransform;
      
      private var var_1843:Number;
      
      private var var_1845:Number;
      
      private var var_1846:Number;
      
      private var var_2852:int;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1844 = this._rgb >> 16 & 255;
         this.var_1847 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1843 = this.var_1844 / 255 * 1;
         this.var_1845 = this.var_1847 / 255 * 1;
         this.var_1846 = this._b / 255 * 1;
         this.var_805 = new ColorTransform(this.var_1843,this.var_1845,this.var_1846);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1844;
      }
      
      public function get g() : uint
      {
         return this.var_1847;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_805;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return this.var_2852;
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         this.var_2852 = param1;
      }
   }
}
