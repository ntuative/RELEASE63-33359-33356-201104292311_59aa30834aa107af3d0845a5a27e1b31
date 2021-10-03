package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_773:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1083)
         {
            _structure = null;
            _assets = null;
            var_256 = null;
            var_285 = null;
            var_666 = null;
            var_574 = null;
            var_329 = null;
            if(!var_1345 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_765 = null;
            var_1083 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_773[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_773[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_416:
               switch(_loc3_)
               {
                  case AvatarAction.const_884:
                  case AvatarAction.const_516:
                  case AvatarAction.const_389:
                  case AvatarAction.const_975:
                  case AvatarAction.const_415:
                  case AvatarAction.const_963:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_357:
            case AvatarAction.const_759:
            case AvatarAction.const_277:
            case AvatarAction.const_815:
            case AvatarAction.const_859:
            case AvatarAction.const_878:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
