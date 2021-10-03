package com.sulake.habbo.communication.messages.outgoing.help
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GetFaqTextMessageComposer implements IMessageComposer
   {
       
      
      private var var_2026:int;
      
      public function GetFaqTextMessageComposer(param1:int)
      {
         super();
         this.var_2026 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2026];
      }
      
      public function dispose() : void
      {
      }
   }
}
