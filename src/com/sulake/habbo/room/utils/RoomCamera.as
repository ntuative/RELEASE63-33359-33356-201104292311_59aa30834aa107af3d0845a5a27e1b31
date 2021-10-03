package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1362:Number = 12;
       
      
      private var var_2393:int = -1;
      
      private var var_2386:int = -2;
      
      private var var_202:Vector3d = null;
      
      private var var_1160:Number = 0;
      
      private var var_1422:Number = 0;
      
      private var var_1758:Boolean = false;
      
      private var var_180:Vector3d = null;
      
      private var var_1761:Vector3d;
      
      private var var_2394:Boolean = false;
      
      private var var_2395:Boolean = false;
      
      private var var_2391:Boolean = false;
      
      private var var_2390:Boolean = false;
      
      private var var_2389:int = 0;
      
      private var var_2387:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2392:int = 0;
      
      private var var_2388:int = 0;
      
      private var var_1682:int = -1;
      
      private var var_1760:int = 0;
      
      private var var_1759:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1761 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_180;
      }
      
      public function get targetId() : int
      {
         return this.var_2393;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2386;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1761;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2394;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2395;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2391;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2390;
      }
      
      public function get screenWd() : int
      {
         return this.var_2389;
      }
      
      public function get screenHt() : int
      {
         return this.var_2387;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2392;
      }
      
      public function get roomHt() : int
      {
         return this.var_2388;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1682;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_202 != null && this.var_180 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2393 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1761.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2386 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2394 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2395 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2391 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2390 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2389 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2387 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1759 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2392 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2388 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1682 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_202 == null)
         {
            this.var_202 = new Vector3d();
         }
         if(this.var_202.x != param1.x || this.var_202.y != param1.y || this.var_202.z != param1.z)
         {
            this.var_202.assign(param1);
            this.var_1760 = 0;
            _loc2_ = Vector3d.dif(this.var_202,this.var_180);
            this.var_1160 = _loc2_.length;
            this.var_1758 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_202 = null;
         this.var_180 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_180 != null)
         {
            return;
         }
         this.var_180 = new Vector3d();
         this.var_180.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_180 == null)
         {
            this.var_180 = new Vector3d();
         }
         this.var_180.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_202 != null && this.var_180 != null)
         {
            ++this.var_1760;
            if(this.var_1759)
            {
               this.var_1759 = false;
               this.var_180 = this.var_202;
               this.var_202 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_202,this.var_180);
            if(_loc3_.length > this.var_1160)
            {
               this.var_1160 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_180 = this.var_202;
               this.var_202 = null;
               this.var_1422 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1160);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1160 / const_1362;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1758)
               {
                  if(_loc7_ < this.var_1422)
                  {
                     _loc7_ = this.var_1422;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1758 = false;
                  }
               }
               this.var_1422 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_180 = Vector3d.sum(this.var_180,_loc3_);
            }
         }
      }
   }
}
