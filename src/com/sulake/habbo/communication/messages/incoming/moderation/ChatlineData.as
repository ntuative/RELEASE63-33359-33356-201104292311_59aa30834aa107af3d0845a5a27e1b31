package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2335:int;
      
      private var var_2333:int;
      
      private var var_2334:int;
      
      private var var_2336:String;
      
      private var var_1766:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2335 = param1.readInteger();
         this.var_2333 = param1.readInteger();
         this.var_2334 = param1.readInteger();
         this.var_2336 = param1.readString();
         this.var_1766 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2335;
      }
      
      public function get minute() : int
      {
         return this.var_2333;
      }
      
      public function get chatterId() : int
      {
         return this.var_2334;
      }
      
      public function get chatterName() : String
      {
         return this.var_2336;
      }
      
      public function get msg() : String
      {
         return this.var_1766;
      }
   }
}
