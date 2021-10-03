package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2156:Number;
      
      private var var_2006:Number;
      
      private var var_882:Number;
      
      private var var_411:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2156 = param1;
         this.var_2006 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_882 = param1;
         this.var_411 = 0;
      }
      
      public function update() : void
      {
         this.var_882 += this.var_2006;
         this.var_411 += this.var_882;
         if(this.var_411 > 0)
         {
            this.var_411 = 0;
            this.var_882 = this.var_2156 * -1 * this.var_882;
         }
      }
      
      public function get location() : Number
      {
         return this.var_411;
      }
   }
}
