package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1683:int;
      
      private var var_1402:int;
      
      private var var_2519:int;
      
      private var var_2222:int;
      
      private var var_2521:int;
      
      private var _energy:int;
      
      private var var_2520:int;
      
      private var _nutrition:int;
      
      private var var_2523:int;
      
      private var var_2226:int;
      
      private var _ownerName:String;
      
      private var var_2228:int;
      
      private var var_538:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1683;
      }
      
      public function get level() : int
      {
         return this.var_1402;
      }
      
      public function get levelMax() : int
      {
         return this.var_2519;
      }
      
      public function get experience() : int
      {
         return this.var_2222;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2521;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2520;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2523;
      }
      
      public function get ownerId() : int
      {
         return this.var_2226;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2228;
      }
      
      public function get age() : int
      {
         return this.var_538;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1683 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1402 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2519 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2222 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2521 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2520 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2523 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2226 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2228 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_538 = param1;
      }
   }
}
