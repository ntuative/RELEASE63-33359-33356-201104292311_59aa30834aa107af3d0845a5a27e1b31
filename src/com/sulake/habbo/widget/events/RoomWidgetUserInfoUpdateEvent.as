package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_127:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_115:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_778:int = 2;
      
      public static const const_817:int = 3;
      
      public static const const_1740:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1969:String = "";
      
      private var var_2189:int;
      
      private var var_2243:int = 0;
      
      private var var_2240:int = 0;
      
      private var var_666:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_277:Array;
      
      private var var_1582:int = 0;
      
      private var var_2319:String = "";
      
      private var var_2320:int = 0;
      
      private var var_2321:int = 0;
      
      private var var_1648:Boolean = false;
      
      private var var_1912:String = "";
      
      private var var_2786:Boolean = false;
      
      private var var_2789:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2791:Boolean = false;
      
      private var var_2790:Boolean = false;
      
      private var var_2785:Boolean = false;
      
      private var var_2788:Boolean = false;
      
      private var var_2792:Boolean = false;
      
      private var var_2793:Boolean = false;
      
      private var var_2787:int = 0;
      
      private var var_1650:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_277 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1969 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1969;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2189 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2189;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2243 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2243;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2240 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2240;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_666 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_277 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_277;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1582 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1582;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2319 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2319;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2786 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2786;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2791 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2791;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2790 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2790;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2785 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2785;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2788 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2788;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2792 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2792;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2793 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2793;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2787 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2787;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2789 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2789;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1650 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1650;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2320 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2320;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2321 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2321;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1648 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1648;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1912 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1912;
      }
   }
}
