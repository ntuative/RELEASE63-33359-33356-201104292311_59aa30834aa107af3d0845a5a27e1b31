package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1719:int;
      
      private var var_2780:int;
      
      private var var_792:int;
      
      private var var_493:Number;
      
      private var var_2779:Boolean;
      
      private var var_2778:int;
      
      private var var_2032:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_493);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2780 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2778 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2779 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_792;
         if(this.var_792 == 1)
         {
            this.var_493 = param1;
            this.var_1719 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_792);
            this.var_493 = this.var_493 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2779 && param3 - this.var_1719 >= this.var_2780)
         {
            this.var_792 = 0;
            if(this.var_2032 < this.var_2778)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_2032;
               this.var_1719 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
