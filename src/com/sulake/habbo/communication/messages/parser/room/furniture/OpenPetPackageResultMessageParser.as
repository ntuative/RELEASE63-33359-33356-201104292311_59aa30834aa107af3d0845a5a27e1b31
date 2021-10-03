package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_196:int = 0;
      
      private var var_1924:int = 0;
      
      private var var_1812:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_196;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1924;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1812;
      }
      
      public function flush() : Boolean
      {
         this.var_196 = 0;
         this.var_1924 = 0;
         this.var_1812 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_196 = param1.readInteger();
         this.var_1924 = param1.readInteger();
         this.var_1812 = param1.readString();
         return true;
      }
   }
}
