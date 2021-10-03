package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1045:int = 20;
      
      private static const const_669:int = 10;
      
      private static const const_1463:int = 31;
      
      private static const const_1365:int = 32;
      
      private static const const_670:int = 30;
       
      
      private var var_311:Array;
      
      private var var_862:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_311 = new Array();
         super();
         super.setAnimation(const_670);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_669)
         {
            if(this.var_862)
            {
               this.var_862 = false;
               this.var_311 = new Array();
               if(direction == 2)
               {
                  this.var_311.push(const_1045 + 5 - param1);
                  this.var_311.push(const_669 + 5 - param1);
               }
               else
               {
                  this.var_311.push(const_1045 + param1);
                  this.var_311.push(const_669 + param1);
               }
               this.var_311.push(const_670);
               return;
            }
            super.setAnimation(const_670);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
