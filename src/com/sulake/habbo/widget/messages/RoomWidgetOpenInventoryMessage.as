package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_742:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1210:String = "inventory_effects";
      
      public static const const_1105:String = "inventory_badges";
      
      public static const const_1534:String = "inventory_clothes";
      
      public static const const_1802:String = "inventory_furniture";
       
      
      private var var_2208:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_742);
         this.var_2208 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2208;
      }
   }
}
