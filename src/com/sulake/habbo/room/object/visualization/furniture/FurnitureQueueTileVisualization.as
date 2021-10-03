package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1365:int = 3;
      
      private static const const_1469:int = 2;
      
      private static const const_1468:int = 1;
      
      private static const const_1467:int = 15;
       
      
      private var var_311:Array;
      
      private var var_1263:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_311 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1469)
         {
            this.var_311 = new Array();
            this.var_311.push(const_1468);
            this.var_1263 = const_1467;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1263 > 0)
         {
            --this.var_1263;
         }
         if(this.var_1263 == 0)
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
