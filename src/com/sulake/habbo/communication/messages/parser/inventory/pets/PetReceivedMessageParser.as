package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1967:Boolean;
      
      private var var_1003:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1967 = param1.readBoolean();
         this.var_1003 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1967 + ", " + this.var_1003.id + ", " + this.var_1003.name + ", " + this.var_1003.type + ", " + this.var_1003.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1967;
      }
      
      public function get pet() : PetData
      {
         return this.var_1003;
      }
   }
}
