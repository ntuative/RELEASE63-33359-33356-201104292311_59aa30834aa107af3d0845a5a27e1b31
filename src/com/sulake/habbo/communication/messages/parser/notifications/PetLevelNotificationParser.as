package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1683:int;
      
      private var var_2199:String;
      
      private var var_1402:int;
      
      private var var_1306:int;
      
      private var var_1849:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1683 = param1.readInteger();
         this.var_2199 = param1.readString();
         this.var_1402 = param1.readInteger();
         this.var_1306 = param1.readInteger();
         this.var_1849 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1683;
      }
      
      public function get petName() : String
      {
         return this.var_2199;
      }
      
      public function get level() : int
      {
         return this.var_1402;
      }
      
      public function get petType() : int
      {
         return this.var_1306;
      }
      
      public function get breed() : int
      {
         return this.var_1849;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
