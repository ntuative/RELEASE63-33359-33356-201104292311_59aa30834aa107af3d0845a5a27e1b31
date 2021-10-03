package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_484:WallRasterizer;
      
      private var var_486:FloorRasterizer;
      
      private var var_715:WallAdRasterizer;
      
      private var var_485:LandscapeRasterizer;
      
      private var var_714:PlaneMaskManager;
      
      private var var_763:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_484 = new WallRasterizer();
         this.var_486 = new FloorRasterizer();
         this.var_715 = new WallAdRasterizer();
         this.var_485 = new LandscapeRasterizer();
         this.var_714 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_763;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_486;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_484;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_715;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_485;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_714;
      }
      
      public function dispose() : void
      {
         if(this.var_484 != null)
         {
            this.var_484.dispose();
            this.var_484 = null;
         }
         if(this.var_486 != null)
         {
            this.var_486.dispose();
            this.var_486 = null;
         }
         if(this.var_715 != null)
         {
            this.var_715.dispose();
            this.var_715 = null;
         }
         if(this.var_485 != null)
         {
            this.var_485.dispose();
            this.var_485 = null;
         }
         if(this.var_714 != null)
         {
            this.var_714.dispose();
            this.var_714 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_484 != null)
         {
            this.var_484.clearCache();
         }
         if(this.var_486 != null)
         {
            this.var_486.clearCache();
         }
         if(this.var_485 != null)
         {
            this.var_485.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_484.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_486.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_715.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_485.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_714.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_763)
         {
            return;
         }
         this.var_484.initializeAssetCollection(param1);
         this.var_486.initializeAssetCollection(param1);
         this.var_715.initializeAssetCollection(param1);
         this.var_485.initializeAssetCollection(param1);
         this.var_714.initializeAssetCollection(param1);
         this.var_763 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
