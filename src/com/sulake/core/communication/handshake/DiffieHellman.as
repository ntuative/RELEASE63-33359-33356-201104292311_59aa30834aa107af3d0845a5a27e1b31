package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_980:BigInteger;
      
      private var var_2211:BigInteger;
      
      private var var_1925:BigInteger;
      
      private var var_2622:BigInteger;
      
      private var var_1508:BigInteger;
      
      private var var_1926:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1508 = param1;
         this.var_1926 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1508.toString() + ",generator: " + this.var_1926.toString() + ",secret: " + param1);
         this.var_980 = new BigInteger();
         this.var_980.fromRadix(param1,param2);
         this.var_2211 = this.var_1926.modPow(this.var_980,this.var_1508);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1925 = new BigInteger();
         this.var_1925.fromRadix(param1,param2);
         this.var_2622 = this.var_1925.modPow(this.var_980,this.var_1508);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2211.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2622.toRadix(param1);
      }
   }
}
