package com.sulake.core.window.graphics.renderer
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.window.utils.ChildEntityArray;
   
   public class SkinTemplate extends ChildEntityArray implements ISkinTemplate
   {
       
      
      protected var _name:String;
      
      protected var var_872:Array;
      
      protected var var_443:IAsset;
      
      public function SkinTemplate(param1:String, param2:IAsset)
      {
         super();
         this._name = param1;
         this.var_872 = new Array();
         this.var_443 = param2;
      }
      
      public function get id() : uint
      {
         return 0;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get tags() : Array
      {
         return this.var_872;
      }
      
      public function get asset() : IAsset
      {
         return this.var_443;
      }
      
      public function dispose() : void
      {
         var _loc2_:int = 0;
         var _loc1_:uint = this.numChildren;
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            this.removeChildAt(0);
            _loc2_++;
         }
         this.var_443 = null;
         this.var_872 = null;
         this._name = null;
      }
   }
}
