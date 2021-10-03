package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1551:Boolean;
      
      private var var_2023:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1551;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_2023;
      }
      
      public function flush() : Boolean
      {
         this.var_1551 = false;
         this.var_2023 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1551 = param1.readInteger() > 0;
         this.var_2023 = param1.readInteger();
         return true;
      }
   }
}
