package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1952:IID;
      
      private var var_1083:Boolean;
      
      private var var_1246:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1952 = param1;
         this.var_1246 = new Array();
         this.var_1083 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1952;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1083;
      }
      
      public function get receivers() : Array
      {
         return this.var_1246;
      }
      
      public function dispose() : void
      {
         if(!this.var_1083)
         {
            this.var_1083 = true;
            this.var_1952 = null;
            while(this.var_1246.length > 0)
            {
               this.var_1246.pop();
            }
            this.var_1246 = null;
         }
      }
   }
}
