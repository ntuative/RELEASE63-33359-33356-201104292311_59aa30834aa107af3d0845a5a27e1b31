package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FindFriendsProcessResultMessageParser implements IMessageParser
   {
       
      
      private var var_2203:Boolean;
      
      public function FindFriendsProcessResultMessageParser()
      {
         super();
      }
      
      public function get success() : Boolean
      {
         return this.var_2203;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2203 = param1.readBoolean();
         return true;
      }
   }
}
