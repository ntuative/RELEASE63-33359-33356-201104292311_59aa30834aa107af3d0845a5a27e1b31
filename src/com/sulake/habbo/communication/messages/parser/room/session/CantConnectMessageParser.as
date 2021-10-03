package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1639:int = 1;
      
      public static const const_1963:int = 2;
      
      public static const const_1643:int = 3;
      
      public static const const_1579:int = 4;
       
      
      private var var_1509:int = 0;
      
      private var var_1510:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1509 = 0;
         this.var_1510 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1509 = param1.readInteger();
         if(this.var_1509 == 3)
         {
            this.var_1510 = param1.readString();
         }
         else
         {
            this.var_1510 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1509;
      }
      
      public function get parameter() : String
      {
         return this.var_1510;
      }
   }
}
