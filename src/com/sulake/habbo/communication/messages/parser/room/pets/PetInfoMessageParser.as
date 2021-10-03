package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1683:int;
      
      private var _name:String;
      
      private var var_1402:int;
      
      private var var_2223:int;
      
      private var var_2222:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_666:String;
      
      private var var_2227:int;
      
      private var var_2224:int;
      
      private var var_2225:int;
      
      private var var_2228:int;
      
      private var var_2226:int;
      
      private var _ownerName:String;
      
      private var var_538:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1683;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1402;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2223;
      }
      
      public function get experience() : int
      {
         return this.var_2222;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2227;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2224;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2225;
      }
      
      public function get respect() : int
      {
         return this.var_2228;
      }
      
      public function get ownerId() : int
      {
         return this.var_2226;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_538;
      }
      
      public function flush() : Boolean
      {
         this.var_1683 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1683 = param1.readInteger();
         this._name = param1.readString();
         this.var_1402 = param1.readInteger();
         this.var_2223 = param1.readInteger();
         this.var_2222 = param1.readInteger();
         this.var_2227 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2224 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2225 = param1.readInteger();
         this.var_666 = param1.readString();
         this.var_2228 = param1.readInteger();
         this.var_2226 = param1.readInteger();
         this.var_538 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
