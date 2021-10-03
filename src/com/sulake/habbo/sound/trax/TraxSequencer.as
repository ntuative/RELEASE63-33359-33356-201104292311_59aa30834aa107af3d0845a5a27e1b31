package com.sulake.habbo.sound.trax
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.sound.IHabboSound;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.IEventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class TraxSequencer implements IHabboSound
   {
      
      private static const const_117:Number = 44100;
      
      private static const const_190:uint = 8192;
      
      private static const const_1414:uint = 88000;
      
      private static const const_1415:uint = 88000;
      
      private static const const_298:Vector.<int> = new Vector.<int>(const_190,true);
       
      
      private var _events:IEventDispatcher;
      
      private var var_509:Number;
      
      private var var_1472:Sound;
      
      private var var_437:SoundChannel;
      
      private var var_1473:TraxData;
      
      private var var_1873:Map;
      
      private var var_1087:Boolean;
      
      private var var_1875:int;
      
      private var var_1470:int = 0;
      
      private var var_204:uint;
      
      private var var_963:Array;
      
      private var var_1872:Boolean;
      
      private var var_629:Boolean = true;
      
      private var var_365:uint;
      
      private var var_1471:uint;
      
      private var var_962:Boolean;
      
      private var var_779:Boolean;
      
      private var var_778:int;
      
      private var var_439:int;
      
      private var var_961:int;
      
      private var var_520:int;
      
      private var var_630:Timer;
      
      private var var_438:Timer;
      
      private var var_1201:int = 0;
      
      private var var_1874:int = 0;
      
      public function TraxSequencer(param1:int, param2:TraxData, param3:Map, param4:IEventDispatcher)
      {
         this.var_1471 = uint(30);
         super();
         this._events = param4;
         this.var_1875 = param1;
         this.var_509 = 1;
         this.var_1472 = new Sound();
         this.var_437 = null;
         this.var_1873 = param3;
         this.var_1473 = param2;
         this.var_1873 = param3;
         this.var_1087 = true;
         this.var_204 = 0;
         this.var_963 = [];
         this.var_1872 = false;
         this.var_365 = 0;
         this.var_629 = false;
         this.var_962 = false;
         this.var_779 = false;
         this.var_778 = 0;
         this.var_439 = 0;
         this.var_961 = 0;
         this.var_520 = 0;
      }
      
      public function set position(param1:Number) : void
      {
         this.var_204 = uint(param1 * const_117);
      }
      
      public function get volume() : Number
      {
         return this.var_509;
      }
      
      public function get position() : Number
      {
         return this.var_204 / const_117;
      }
      
      public function get ready() : Boolean
      {
         return this.var_1087;
      }
      
      public function set ready(param1:Boolean) : void
      {
         this.var_1087 = param1;
      }
      
      public function get finished() : Boolean
      {
         return this.var_629;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_439 / const_117;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
         this.var_439 = int(param1 * const_117);
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_778 / const_117;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
         this.var_778 = int(param1 * const_117);
      }
      
      public function get traxData() : TraxData
      {
         return this.var_1473;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_509 = param1;
         if(this.var_437 != null)
         {
            this.var_437.soundTransform = new SoundTransform(this.var_509);
         }
      }
      
      public function get length() : Number
      {
         return this.var_365 / const_117;
      }
      
      public function prepare() : Boolean
      {
         if(!this.var_1087)
         {
            Logger.log("Cannot start trax playback until samples ready!");
            return false;
         }
         if(!this.var_1872)
         {
            if(!this.prepareSequence())
            {
               Logger.log("Cannot start playback, prepare sequence failed!");
               return false;
            }
         }
         return true;
      }
      
      private function prepareSequence() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_1473.channels.length)
         {
            _loc2_ = new Map();
            _loc3_ = this.var_1473.channels[_loc1_] as TraxChannel;
            _loc4_ = 0;
            _loc5_ = 0;
            _loc6_ = 0;
            while(_loc6_ < _loc3_.itemCount)
            {
               _loc7_ = _loc3_.getItem(_loc6_).id;
               _loc8_ = this.var_1873.getValue(_loc7_) as TraxSample;
               if(_loc8_ == null)
               {
                  Logger.log("Error in prepareSequence(), sample was null!");
               }
               continue;
               _loc9_ = this.getSampleBars(_loc8_.length);
               _loc10_ = _loc3_.getItem(_loc6_).length / _loc9_;
               _loc11_ = 0;
               while(_loc11_ < _loc10_)
               {
                  if(_loc7_ != 0)
                  {
                     _loc2_.add(_loc4_,_loc8_);
                  }
                  _loc5_ += _loc9_;
                  _loc4_ = uint(_loc5_ * const_1415);
                  _loc11_++;
               }
               if(this.var_365 < _loc4_)
               {
                  this.var_365 = _loc4_;
               }
               _loc6_++;
               return false;
            }
            this.var_963.push(_loc2_);
            _loc1_++;
         }
         this.var_1872 = true;
         return true;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         this.removeFadeoutStopTimer();
         if(this.var_437 != null)
         {
            this.stopImmediately();
         }
         if(this.var_778 > 0)
         {
            this.var_962 = true;
            this.var_961 = 0;
         }
         this.var_779 = false;
         this.var_520 = 0;
         this.var_629 = false;
         this.var_1472.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.var_1470 = param1 * const_117;
         this.var_1201 = 0;
         this.var_1874 = 0;
         this.var_437 = this.var_1472.play();
         return true;
      }
      
      public function render(param1:SampleDataEvent) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         while(!this.var_629)
         {
            this.onSampleData(param1);
         }
         return true;
      }
      
      public function stop() : Boolean
      {
         if(this.var_439 > 0 && !this.var_629)
         {
            this.stopWithFadeout();
         }
         else
         {
            this.playingComplete();
         }
         return true;
      }
      
      private function stopImmediately() : void
      {
         this.removeStopTimer();
         if(this.var_437 != null)
         {
            this.var_437.stop();
            this.var_437 = null;
         }
         this.var_1472.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
      }
      
      private function stopWithFadeout() : void
      {
         if(this.var_630 == null)
         {
            this.var_779 = true;
            this.var_520 = 0;
            this.var_630 = new Timer(this.var_1471 + this.var_439 / (const_117 / 1000),1);
            this.var_630.start();
            this.var_630.addEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
         }
      }
      
      private function getSampleBars(param1:uint) : int
      {
         return Math.ceil(param1 / const_1414);
      }
      
      private function getChannelSequenceOffsets() : Array
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc1_:* = [];
         var _loc2_:int = this.var_963.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.var_963[_loc3_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length && _loc4_.getKey(_loc5_) < this.var_204)
            {
               _loc5_++;
            }
            _loc1_.push(_loc5_ - 1);
            _loc3_++;
         }
         return _loc1_;
      }
      
      private function mixChannelsIntoBuffer() : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc1_:Array = this.getChannelSequenceOffsets();
         var _loc2_:int = this.var_963.length;
         var _loc3_:* = null;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = this.var_963[_loc4_];
            _loc6_ = _loc1_[_loc4_];
            _loc7_ = _loc5_.getWithIndex(_loc6_);
            if(_loc7_ == null)
            {
               _loc3_ = null;
            }
            else
            {
               _loc10_ = _loc5_.getKey(_loc6_);
               _loc11_ = this.var_204 - _loc10_;
               if(_loc7_.id == 0 || _loc11_ < 0)
               {
                  _loc3_ = null;
               }
               else
               {
                  _loc3_ = new TraxChannelSample(_loc7_,_loc11_);
               }
            }
            _loc8_ = const_190;
            if(this.var_365 - this.var_204 < _loc8_)
            {
               _loc8_ = this.var_365 - this.var_204;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc12_ = _loc8_;
               if(_loc6_ < _loc5_.length - 1)
               {
                  _loc13_ = _loc5_.getKey(_loc6_ + 1);
                  if(_loc8_ + this.var_204 >= _loc13_)
                  {
                     _loc12_ = _loc13_ - this.var_204;
                  }
               }
               if(_loc12_ > _loc8_ - _loc9_)
               {
                  _loc12_ = _loc8_ - _loc9_;
               }
               if(_loc4_ == _loc2_ - 1)
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.setSample(const_298,_loc9_,_loc12_);
                     _loc9_ += _loc12_;
                  }
                  else
                  {
                     _loc14_ = 0;
                     while(_loc14_ < _loc12_)
                     {
                        var _loc15_:*;
                        const_298[_loc15_ = _loc9_++] = 0;
                        _loc14_++;
                     }
                  }
               }
               else
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.addSample(const_298,_loc9_,_loc12_);
                  }
                  _loc9_ += _loc12_;
               }
               if(_loc9_ < _loc8_)
               {
                  _loc7_ = _loc5_.getWithIndex(++_loc6_);
                  if(_loc7_ == null || _loc7_.id == 0)
                  {
                     _loc3_ = null;
                  }
                  else
                  {
                     _loc3_ = new TraxChannelSample(_loc7_,0);
                  }
               }
            }
            _loc4_--;
         }
      }
      
      private function checkSongFinishing() : void
      {
         var _loc1_:int = this.var_365 < this.var_1470 ? int(this.var_365) : (this.var_1470 > 0 ? int(this.var_1470) : int(this.var_365));
         if(this.var_204 > _loc1_ + this.var_1471 * (const_117 / 1000) && !this.var_629)
         {
            this.var_629 = true;
            if(this.var_438 != null)
            {
               this.var_438.reset();
               this.var_438.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            }
            this.var_438 = new Timer(2,1);
            this.var_438.start();
            this.var_438.addEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
         }
         else if(this.var_204 > _loc1_ - this.var_439 && !this.var_779)
         {
            this.var_962 = false;
            this.var_779 = true;
            this.var_520 = 0;
         }
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         if(param1.position > this.var_1201)
         {
            ++this.var_1874;
            Logger.log("Audio buffer under run...");
            this.var_1201 = param1.position;
         }
         if(this.volume > 0)
         {
            this.mixChannelsIntoBuffer();
         }
         var _loc2_:int = const_190;
         if(this.var_365 - this.var_204 < _loc2_)
         {
            _loc2_ = this.var_365 - this.var_204;
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
         }
         if(this.volume <= 0)
         {
            _loc2_ = 0;
         }
         this.writeAudioToOutputStream(param1.data,_loc2_);
         this.var_204 += const_190;
         this.var_1201 += const_190;
         if(this.var_437 != null)
         {
            this.var_1471 = param1.position / const_117 * 1000 - this.var_437.position;
         }
         this.checkSongFinishing();
      }
      
      private function writeAudioToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param2 > 0)
         {
            if(!this.var_962 && !this.var_779)
            {
               this.writeMixingBufferToOutputStream(param1,param2);
            }
            else
            {
               if(this.var_962)
               {
                  _loc5_ = 1 / this.var_778;
                  _loc6_ = this.var_961 / Number(this.var_778);
                  this.var_961 += const_190;
                  if(this.var_961 > this.var_778)
                  {
                     this.var_962 = false;
                  }
               }
               else if(this.var_779)
               {
                  _loc5_ = -1 / this.var_439;
                  _loc6_ = 1 - this.var_520 / Number(this.var_439);
                  this.var_520 += const_190;
                  if(this.var_520 > this.var_439)
                  {
                     this.var_520 = this.var_439;
                  }
               }
               this.writeMixingBufferToOutputStreamWithFade(param1,param2,_loc6_,_loc5_);
            }
         }
         var _loc4_:int = param2;
         while(_loc4_ < const_190)
         {
            param1.writeFloat(0);
            param1.writeFloat(0);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = Number(Number(const_298[_loc4_]) * 0 * this.volume);
            param1.writeFloat(_loc3_);
            param1.writeFloat(_loc3_);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStreamWithFade(param1:ByteArray, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < param2)
         {
            if(param3 < 0 || param3 > 1)
            {
               break;
            }
            _loc5_ = Number(Number(const_298[_loc6_]) * 0 * this.volume * param3);
            param3 += param4;
            param1.writeFloat(_loc5_);
            param1.writeFloat(_loc5_);
            _loc6_++;
         }
         if(param3 < 0)
         {
            while(_loc6_ < param2)
            {
               param1.writeFloat(0);
               param1.writeFloat(0);
               _loc6_++;
            }
         }
         else if(param3 > 1)
         {
            while(_loc6_ < param2)
            {
               _loc5_ = Number(Number(const_298[_loc6_]) * 0 * this.volume);
               param3 += param4;
               param1.writeFloat(_loc5_);
               param1.writeFloat(_loc5_);
               _loc6_++;
            }
         }
      }
      
      private function onPlayingComplete(param1:TimerEvent) : void
      {
         if(this.var_629)
         {
            this.playingComplete();
         }
      }
      
      private function onFadeOutComplete(param1:TimerEvent) : void
      {
         this.removeFadeoutStopTimer();
         this.playingComplete();
      }
      
      private function playingComplete() : void
      {
         this.stopImmediately();
         this._events.dispatchEvent(new SoundCompleteEvent(SoundCompleteEvent.TRAX_SONG_COMPLETE,this.var_1875));
      }
      
      private function removeFadeoutStopTimer() : void
      {
         if(this.var_630 != null)
         {
            this.var_630.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
            this.var_630.reset();
            this.var_630 = null;
         }
      }
      
      private function removeStopTimer() : void
      {
         if(this.var_438 != null)
         {
            this.var_438.reset();
            this.var_438.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            this.var_438 = null;
         }
      }
   }
}
