package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.utils.Map;
   import flash.utils.getTimer;
   
   public class AvatarImageActionCache
   {
       
      
      private var var_256:Map;
      
      private var var_2486:int;
      
      public function AvatarImageActionCache()
      {
         super();
         this.var_256 = new Map();
         this.setLastAccessTime(getTimer());
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         this.debugInfo("[dispose]");
         if(this.var_256 == null)
         {
            return;
         }
         for each(_loc1_ in this.var_256)
         {
            _loc1_.dispose();
         }
         this.var_256.dispose();
      }
      
      public function getDirectionCache(param1:int) : AvatarImageDirectionCache
      {
         var _loc2_:String = param1.toString();
         return this.var_256.getValue(_loc2_) as AvatarImageDirectionCache;
      }
      
      public function updateDirectionCache(param1:int, param2:AvatarImageDirectionCache) : void
      {
         var _loc3_:String = param1.toString();
         this.var_256.add(_loc3_,param2);
      }
      
      public function setLastAccessTime(param1:int) : void
      {
         this.var_2486 = param1;
      }
      
      public function getLastAccessTime() : int
      {
         return this.var_2486;
      }
      
      private function debugInfo(param1:String) : void
      {
      }
   }
}
