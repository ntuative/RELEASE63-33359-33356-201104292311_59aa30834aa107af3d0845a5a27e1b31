package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2073:int = 0;
      
      public static const const_1678:int = 1;
      
      public static const const_1584:int = 2;
      
      public static const const_2056:int = 3;
      
      public static const const_2095:int = 4;
      
      public static const const_2043:int = 5;
      
      public static const const_1768:int = 10;
      
      public static const const_2094:int = 11;
      
      public static const const_1983:int = 12;
      
      public static const const_2031:int = 13;
      
      public static const const_2010:int = 16;
      
      public static const const_2016:int = 17;
      
      public static const const_2013:int = 18;
      
      public static const const_2040:int = 19;
      
      public static const const_1950:int = 20;
      
      public static const const_1905:int = 22;
      
      public static const const_1971:int = 23;
      
      public static const const_2104:int = 24;
      
      public static const const_1900:int = 25;
      
      public static const const_1899:int = 26;
      
      public static const const_2037:int = 27;
      
      public static const const_2108:int = 28;
      
      public static const const_2027:int = 29;
      
      public static const const_2054:int = 100;
      
      public static const const_2025:int = 101;
      
      public static const const_2089:int = 102;
      
      public static const const_1961:int = 103;
      
      public static const const_1985:int = 104;
      
      public static const const_1929:int = 105;
      
      public static const const_2076:int = 106;
      
      public static const const_1941:int = 107;
      
      public static const const_1957:int = 108;
      
      public static const const_1931:int = 109;
      
      public static const const_1986:int = 110;
      
      public static const const_2023:int = 111;
      
      public static const const_2086:int = 112;
      
      public static const const_1894:int = 113;
      
      public static const const_2015:int = 114;
      
      public static const const_2101:int = 115;
      
      public static const const_2051:int = 116;
      
      public static const const_2004:int = 117;
      
      public static const const_1942:int = 118;
      
      public static const const_1968:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1678:
            case const_1768:
               return "banned";
            case const_1584:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
