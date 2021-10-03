package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2451:String;
      
      private var var_1801:String;
      
      private var var_2452:String;
      
      private var var_1799:Boolean;
      
      private var var_1800:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2451 = String(param1["set-type"]);
         this.var_1801 = String(param1["flipped-set-type"]);
         this.var_2452 = String(param1["remove-set-type"]);
         this.var_1799 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1800 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1800;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1800 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2451;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1801;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2452;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1799;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1799 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1801 = param1;
      }
   }
}
