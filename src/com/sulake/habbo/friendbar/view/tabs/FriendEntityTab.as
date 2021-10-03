package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendbar.data.IFriendEntity;
   import flash.display.BitmapData;
   
   public class FriendEntityTab extends Tab
   {
      
      private static const const_1358:String = "entity_xml";
      
      private static const const_1360:String = "facebook_piece_xml";
      
      private static const const_1359:String = "controls_piece_xml";
      
      private static const const_454:String = "list";
      
      private static const const_653:String = "header";
      
      private static const const_997:String = "facebook";
      
      private static const const_994:String = "controls";
      
      private static const const_652:String = "canvas";
      
      private static const const_451:String = "name";
      
      private static const const_995:String = "btn_message";
      
      private static const const_996:String = "btn_visit";
      
      private static const const_1019:String = "icon";
      
      private static const POOL:Array = [];
      
      private static const const_450:Array = [];
       
      
      private var var_352:IFriendEntity;
      
      public function FriendEntityTab()
      {
         super();
      }
      
      public static function allocate(param1:IFriendEntity) : FriendEntityTab
      {
         var _loc2_:FriendEntityTab = false ? POOL.pop() : new FriendEntityTab();
         _loc2_.var_478 = false;
         _loc2_.friend = param1;
         return _loc2_;
      }
      
      private static function purgeEntityPieces(param1:IWindowContainer) : void
      {
         var _loc3_:* = null;
         var _loc2_:IItemListWindow = IItemListWindow(param1.getChildByName(const_454));
         _loc3_ = _loc2_.getListItemByName(const_997) as IWindowContainer;
         if(_loc3_)
         {
            _loc3_.dispose();
         }
         _loc3_ = _loc2_.getListItemByName(const_994) as IWindowContainer;
         if(_loc3_)
         {
            _loc3_.dispose();
         }
         param1.height = name_1;
         param1.y = 0;
      }
      
      public function set friend(param1:IFriendEntity) : void
      {
         this.var_352 = param1;
         this.refresh();
      }
      
      public function get friend() : IFriendEntity
      {
         return this.var_352;
      }
      
      override public function recycle() : void
      {
         if(!disposed)
         {
            if(!var_478)
            {
               if(_window)
               {
                  this.releaseEntityWindow(_window);
                  _window = null;
               }
               this.var_352 = null;
               var_478 = true;
               POOL.push(this);
            }
         }
      }
      
      override public function select() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!selected)
         {
            _loc1_ = IItemListWindow(window.getChildByName(const_454));
            if(this.friend.realName != null && this.friend.realName != "")
            {
               _loc2_ = var_1327.buildFromXML(var_864.getAssetByName(const_1360).content as XML) as IWindowContainer;
               _loc2_.name = const_997;
               _loc2_.getChildByName(const_451).caption = this.friend.realName;
               CROPPER.crop(_loc2_.getChildByName(const_451) as ITextWindow);
               _loc3_ = IBitmapWrapperWindow(_loc2_.getChildByName(const_1019));
               _loc3_.bitmap = var_864.getAssetByName(_loc3_.bitmapAssetName).content as BitmapData;
               _loc3_.width = _loc3_.bitmap.width;
               _loc3_.height = _loc3_.bitmap.height;
               _loc1_.addListItem(_loc2_);
            }
            if(this.friend.online)
            {
               _loc2_ = var_1327.buildFromXML(var_864.getAssetByName(const_1359).content as XML) as IWindowContainer;
               _loc2_.name = const_994;
               _loc4_ = _loc2_.getChildByName(const_995);
               if(_loc4_)
               {
                  _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onControlClick);
               }
               _loc4_ = _loc2_.getChildByName(const_996);
               if(_loc4_)
               {
                  if(this.friend.allowFollow)
                  {
                     _loc4_.visible = true;
                     _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onControlClick);
                  }
                  else
                  {
                     _loc4_.visible = false;
                  }
               }
               _loc1_.addListItem(_loc2_);
            }
            window.height = _loc1_.height;
            window.y = name_1 - 0;
            super.select();
         }
      }
      
      override public function deselect() : void
      {
         if(selected)
         {
            if(_window)
            {
               purgeEntityPieces(_window);
            }
            super.deselect();
         }
      }
      
      protected function refresh() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!_window)
         {
            _window = this.allocateEntityWindow();
         }
         if(this.var_352)
         {
            _window.id = this.var_352.id;
            _loc1_ = IItemListWindow(_window.getChildByName(const_454)).getListItemByName(const_653) as IWindowContainer;
            _loc1_.findChildByName(const_451).caption = this.var_352.name;
            CROPPER.crop(_loc1_.getChildByName(const_451) as ITextWindow);
            _loc2_ = IBitmapWrapperWindow(_loc1_.findChildByName(const_652));
            _loc2_.bitmap = var_1613.getAvatarFaceBitmap(this.var_352.figure);
            _loc2_.width = _loc2_.bitmap.width;
            _loc2_.height = _loc2_.bitmap.height;
         }
      }
      
      private function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_450.pop() : var_1327.buildFromXML(var_864.getAssetByName(const_1358).content as XML) as IWindowContainer;
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(_loc1_.findChildByName(const_652));
         _loc1_.x = 0;
         _loc1_.y = 0;
         _loc1_.width = name_5;
         _loc1_.height = name_1;
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc1_.addEventListener(WindowMouseEvent.const_558,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseHover);
         _loc1_.findChildByName(const_653).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc2_.disposesBitmap = true;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.removeEventListener(WindowMouseEvent.const_558,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseHover);
            param1.findChildByName(const_653).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.width = name_5;
            param1.height = name_1;
            _loc2_ = IBitmapWrapperWindow(param1.findChildByName(const_652));
            _loc2_.bitmap = null;
            purgeEntityPieces(param1);
            if(const_450.indexOf(param1) == -1)
            {
               const_450.push(param1);
            }
         }
      }
      
      private function onControlClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            switch(param1.window.name)
            {
               case const_995:
                  if(var_1073 && this.var_352)
                  {
                     var_1073.startConversation(this.var_352.id);
                     this.deselect();
                  }
                  break;
               case const_996:
                  if(var_1073 && this.var_352)
                  {
                     var_1073.followToRoom(this.var_352.id);
                     this.deselect();
                  }
            }
         }
      }
   }
}
