package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_788:int = 1;
      
      public static const const_973:int = 2;
      
      public static const const_950:int = 3;
      
      public static const const_1189:int = 4;
      
      public static const const_793:int = 5;
      
      public static const const_1166:int = 6;
       
      
      private var _type:int;
      
      private var var_1214:int;
      
      private var var_2575:String;
      
      private var var_2838:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1214 = param2;
         this.var_2575 = param3;
         this.var_2838 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2575;
      }
      
      public function get time() : String
      {
         return this.var_2838;
      }
      
      public function get senderId() : int
      {
         return this.var_1214;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
