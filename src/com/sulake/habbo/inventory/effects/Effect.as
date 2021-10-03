package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _type:int;
      
      private var var_1693:int;
      
      private var var_949:int = 1;
      
      private var var_1444:int;
      
      private var var_418:Boolean = false;
      
      private var _isSelected:Boolean = false;
      
      private var var_1819:Boolean = false;
      
      private var var_699:BitmapData;
      
      private var var_2470:Date;
      
      public function Effect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get duration() : int
      {
         return this.var_1693;
      }
      
      public function get effectsInInventory() : int
      {
         return this.var_949;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_418;
      }
      
      public function get isInUse() : Boolean
      {
         return this.var_1819;
      }
      
      public function get isSelected() : Boolean
      {
         return this._isSelected;
      }
      
      public function get icon() : BitmapData
      {
         return this.var_699;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_699;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(this.var_418)
         {
            _loc1_ = this.var_1444 - (new Date().valueOf() - this.var_2470.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return this.var_1444;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1693 = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         this.var_1444 = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         this.var_1819 = param1;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_699 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         this.var_949 = param1;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !this.var_418)
         {
            this.var_2470 = new Date();
         }
         this.var_418 = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --this.var_949;
         if(this.var_949 < 0)
         {
            this.var_949 = 0;
         }
         this.var_1444 = this.var_1693;
         this.var_418 = false;
         this.var_1819 = false;
      }
   }
}
