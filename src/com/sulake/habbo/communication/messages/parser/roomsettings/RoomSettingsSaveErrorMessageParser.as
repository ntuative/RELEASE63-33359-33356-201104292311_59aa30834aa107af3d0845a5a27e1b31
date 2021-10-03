package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2085:int = 1;
      
      public static const const_2011:int = 2;
      
      public static const const_2028:int = 3;
      
      public static const const_2107:int = 4;
      
      public static const const_1794:int = 5;
      
      public static const const_1932:int = 6;
      
      public static const const_1654:int = 7;
      
      public static const const_1744:int = 8;
      
      public static const const_2066:int = 9;
      
      public static const const_1573:int = 10;
      
      public static const const_1790:int = 11;
      
      public static const const_1674:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1863:int;
      
      private var var_1474:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1863 = param1.readInteger();
         this.var_1474 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1863;
      }
      
      public function get info() : String
      {
         return this.var_1474;
      }
   }
}
