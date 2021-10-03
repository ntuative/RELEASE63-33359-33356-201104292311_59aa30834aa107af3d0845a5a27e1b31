package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2589:Boolean;
      
      private var var_2590:int;
      
      private var var_1705:Array;
      
      private var var_731:Array;
      
      private var var_732:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2589;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2590;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1705;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_731;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_732;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1705 = [];
         this.var_731 = [];
         this.var_732 = [];
         this.var_2589 = param1.readBoolean();
         this.var_2590 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1705.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_731.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_732.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
