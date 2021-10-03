package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1045:int = 10;
      
      private static const const_669:int = 20;
      
      private static const const_1463:int = 31;
      
      private static const const_1365:int = 32;
       
      
      private var var_311:Array;
      
      private var var_862:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_311 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_862)
            {
               this.var_862 = true;
               this.var_311 = new Array();
               this.var_311.push(const_1463);
               this.var_311.push(const_1365);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1045)
         {
            if(this.var_862)
            {
               this.var_862 = false;
               this.var_311 = new Array();
               this.var_311.push(const_1045 + param1);
               this.var_311.push(const_669 + param1);
               this.var_311.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_311.length > 0)
            {
               super.setAnimation(this.var_311.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
