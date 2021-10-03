package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1863:int;
      
      private var var_1868:int;
      
      private var var_1869:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1868 = param1.readInteger();
         this.var_1863 = param1.readInteger();
         this.var_1869 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1863 = 0;
         this.var_1868 = 0;
         this.var_1869 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1863;
      }
      
      public function get messageId() : int
      {
         return this.var_1868;
      }
      
      public function get timestamp() : String
      {
         return this.var_1869;
      }
   }
}
