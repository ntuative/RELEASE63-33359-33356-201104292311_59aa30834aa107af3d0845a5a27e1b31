package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_28:String = "AssetLoaderEventComplete";
      
      public static const const_1180:String = "AssetLoaderEventProgress";
      
      public static const const_1266:String = "AssetLoaderEventUnload";
      
      public static const const_1287:String = "AssetLoaderEventStatus";
      
      public static const const_47:String = "AssetLoaderEventError";
      
      public static const const_1280:String = "AssetLoaderEventOpen";
       
      
      private var var_404:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_404 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_404;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_404);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}
