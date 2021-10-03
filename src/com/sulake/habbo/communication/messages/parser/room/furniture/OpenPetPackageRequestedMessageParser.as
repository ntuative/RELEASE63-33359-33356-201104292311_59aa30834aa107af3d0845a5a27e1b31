package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageRequestedMessageParser implements IMessageParser
   {
       
      
      private var var_196:int = -1;
      
      private var var_1306:int = -1;
      
      private var var_1849:int = -1;
      
      private var _color:String = "";
      
      public function OpenPetPackageRequestedMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_196;
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
      
      public function flush() : Boolean
      {
         this.var_196 = -1;
         this.var_1306 = -1;
         this.var_1849 = -1;
         this._color = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_196 = param1.readInteger();
         this.var_1306 = param1.readInteger();
         this.var_1849 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
   }
}
