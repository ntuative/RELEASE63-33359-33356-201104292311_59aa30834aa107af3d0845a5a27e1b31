package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1662:Boolean;
      
      private var var_2198:int;
      
      private var var_406:Boolean;
      
      private var var_1107:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_1662;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2198;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1107;
      }
      
      public function get owner() : Boolean
      {
         return this.var_406;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1107 != null)
         {
            this.var_1107.dispose();
            this.var_1107 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1662 = param1.readBoolean();
         if(this.var_1662)
         {
            this.var_2198 = param1.readInteger();
            this.var_406 = param1.readBoolean();
         }
         else
         {
            this.var_1107 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
