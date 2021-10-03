package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1214:BigInteger;
      
      private var var_591:BigInteger;
      
      private var var_1480:BigInteger;
      
      private var var_1481:BigInteger;
      
      private var var_1923:BigInteger;
      
      private var var_1655:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1214 = param1;
         var_1480 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1923.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1481 = new BigInteger();
         var_1481.fromRadix(param1,param2);
         var_1923 = var_1481.modPow(var_591,var_1214);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1655.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1214.toString() + ",generator: " + var_1480.toString() + ",secret: " + param1);
         var_591 = new BigInteger();
         var_591.fromRadix(param1,param2);
         var_1655 = var_1480.modPow(var_591,var_1214);
         return true;
      }
   }
}
