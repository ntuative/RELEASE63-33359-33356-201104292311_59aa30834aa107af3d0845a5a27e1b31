package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_756:String = "";
      
      public static const const_396:int = 0;
      
      public static const const_484:int = 255;
      
      public static const const_715:Boolean = false;
      
      public static const const_602:int = 0;
      
      public static const const_641:int = 0;
      
      public static const const_402:int = 0;
      
      public static const const_1095:int = 1;
      
      public static const const_1182:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2182:String = "";
      
      private var var_2018:int = 0;
      
      private var var_2426:int = 255;
      
      private var var_2663:Boolean = false;
      
      private var var_2664:int = 0;
      
      private var var_2661:int = 0;
      
      private var var_2662:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2182 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2182;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2018 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2018;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2426 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2426;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2663 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2663;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2664 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2664;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2661 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2661;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2662 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2662;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
