package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_335:int;
      
      private var var_774:Boolean;
      
      private var var_931:String;
      
      private var _ownerName:String;
      
      private var var_2176:int;
      
      private var var_2161:int;
      
      private var var_2270:int;
      
      private var var_1691:String;
      
      private var var_2267:int;
      
      private var var_2175:Boolean;
      
      private var var_734:int;
      
      private var var_1360:int;
      
      private var var_2266:String;
      
      private var var_872:Array;
      
      private var var_2268:RoomThumbnailData;
      
      private var var_2269:Boolean;
      
      private var var_2271:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_872 = new Array();
         super();
         this.var_335 = param1.readInteger();
         this.var_774 = param1.readBoolean();
         this.var_931 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2176 = param1.readInteger();
         this.var_2161 = param1.readInteger();
         this.var_2270 = param1.readInteger();
         this.var_1691 = param1.readString();
         this.var_2267 = param1.readInteger();
         this.var_2175 = param1.readBoolean();
         this.var_734 = param1.readInteger();
         this.var_1360 = param1.readInteger();
         this.var_2266 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_872.push(_loc4_);
            _loc3_++;
         }
         this.var_2268 = new RoomThumbnailData(param1);
         this.var_2269 = param1.readBoolean();
         this.var_2271 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_872 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_335;
      }
      
      public function get event() : Boolean
      {
         return this.var_774;
      }
      
      public function get roomName() : String
      {
         return this.var_931;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2176;
      }
      
      public function get userCount() : int
      {
         return this.var_2161;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2270;
      }
      
      public function get description() : String
      {
         return this.var_1691;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2267;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2175;
      }
      
      public function get score() : int
      {
         return this.var_734;
      }
      
      public function get categoryId() : int
      {
         return this.var_1360;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2266;
      }
      
      public function get tags() : Array
      {
         return this.var_872;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2268;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2269;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2271;
      }
   }
}
