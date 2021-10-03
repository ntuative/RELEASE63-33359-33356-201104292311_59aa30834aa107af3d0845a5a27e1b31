package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   
   public class AddFriendsEntityTab extends Tab
   {
      
      private static const const_1019:String = "icon";
      
      private static const TEXT:String = "text";
      
      private static const const_653:String = "header";
      
      private static const const_1891:String = "title";
      
      private static const BUTTON:String = "button";
      
      private static const const_1506:String = "addFriendsEntityTabXML";
      
      private static const const_1507:String = "add_friends_icon_png";
      
      private static var var_1059:int = -1;
      
      private static const POOL:Array = [];
      
      private static const const_450:Array = [];
       
      
      public function AddFriendsEntityTab()
      {
         super();
      }
      
      public static function allocate() : AddFriendsEntityTab
      {
         var _loc1_:AddFriendsEntityTab = false ? POOL.pop() : new AddFriendsEntityTab();
         _loc1_.var_478 = false;
         _loc1_._window = _loc1_.allocateEntityWindow();
         return _loc1_;
      }
      
      public function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_450.pop() : var_1327.buildFromXML(var_864.getAssetByName(const_1506).content as XML) as IWindowContainer;
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc1_.addEventListener(WindowMouseEvent.const_558,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseHover);
         _loc1_.findChildByName(const_653).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         if(var_1059 < 0)
         {
            var_1059 = _loc1_.height;
         }
         _loc1_.height = name_1;
         var _loc2_:IBitmapWrapperWindow = _loc1_.findChildByName(const_1019) as IBitmapWrapperWindow;
         _loc2_.disposesBitmap = false;
         _loc2_.bitmap = var_864.getAssetByName(const_1507).content as BitmapData;
         var _loc3_:IWindow = _loc1_.findChildByName(BUTTON);
         _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
         var _loc4_:IWindow = _loc1_.findChildByName(TEXT);
         _loc4_.visible = false;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.removeEventListener(WindowMouseEvent.const_558,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OUT,onMouseHover);
            param1.findChildByName(const_653).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.findChildByName(BUTTON).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
            param1.findChildByName(TEXT).visible = false;
            param1.width = name_5;
            param1.height = name_1;
            if(const_450.indexOf(param1) == -1)
            {
               const_450.push(param1);
            }
         }
      }
      
      override public function select() : void
      {
         if(!selected)
         {
            _window.height = var_1059;
            _window.y = 0 - (0 - name_1);
            _window.findChildByName(TEXT).visible = true;
            super.select();
         }
      }
      
      override public function deselect() : void
      {
         if(selected)
         {
            _window.y = 0;
            _window.height = name_1;
            _window.findChildByName(TEXT).visible = false;
            super.deselect();
         }
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
               var_478 = true;
               POOL.push(this);
            }
         }
      }
      
      private function onButtonClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            var_1073.findNewFriends();
            this.deselect();
         }
      }
   }
}
