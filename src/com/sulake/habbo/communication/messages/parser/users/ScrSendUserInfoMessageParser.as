package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1977:int = 1;
      
      public static const const_1786:int = 2;
       
      
      private var var_918:String;
      
      private var var_2599:int;
      
      private var var_2603:int;
      
      private var var_2600:int;
      
      private var var_2604:int;
      
      private var var_2607:Boolean;
      
      private var var_2434:Boolean;
      
      private var var_2602:int;
      
      private var var_2608:int;
      
      private var var_2601:Boolean;
      
      private var var_2606:int;
      
      private var var_2605:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_918 = param1.readString();
         this.var_2599 = param1.readInteger();
         this.var_2603 = param1.readInteger();
         this.var_2600 = param1.readInteger();
         this.var_2604 = param1.readInteger();
         this.var_2607 = param1.readBoolean();
         this.var_2434 = param1.readBoolean();
         this.var_2602 = param1.readInteger();
         this.var_2608 = param1.readInteger();
         this.var_2601 = param1.readBoolean();
         this.var_2606 = param1.readInteger();
         this.var_2605 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_918;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2599;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2603;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2600;
      }
      
      public function get responseType() : int
      {
         return this.var_2604;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2607;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2434;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2602;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2608;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2601;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2606;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2605;
      }
   }
}
