package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2836:int;
      
      private var var_2834:int;
      
      private var var_2835:int;
      
      private var var_2837:int;
      
      private var var_101:Array;
      
      private var var_226:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_101 = new Array();
         this.var_226 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2836 = param1.readInteger();
         this.var_2834 = param1.readInteger();
         this.var_2835 = param1.readInteger();
         this.var_2837 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_101.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_226.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2836;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2834;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2835;
      }
      
      public function get categories() : Array
      {
         return this.var_101;
      }
      
      public function get friends() : Array
      {
         return this.var_226;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2837;
      }
   }
}
