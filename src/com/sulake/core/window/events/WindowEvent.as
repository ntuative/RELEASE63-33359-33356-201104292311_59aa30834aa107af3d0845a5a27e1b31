package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1627:String = "WE_DESTROY";
      
      public static const const_349:String = "WE_DESTROYED";
      
      public static const const_1792:String = "WE_OPEN";
      
      public static const const_1618:String = "WE_OPENED";
      
      public static const const_1645:String = "WE_CLOSE";
      
      public static const const_1532:String = "WE_CLOSED";
      
      public static const const_1577:String = "WE_FOCUS";
      
      public static const const_318:String = "WE_FOCUSED";
      
      public static const const_1559:String = "WE_UNFOCUS";
      
      public static const const_1689:String = "WE_UNFOCUSED";
      
      public static const const_1593:String = "WE_ACTIVATE";
      
      public static const const_496:String = "WE_ACTIVATED";
      
      public static const const_1692:String = "WE_DEACTIVATE";
      
      public static const const_549:String = "WE_DEACTIVATED";
      
      public static const const_331:String = "WE_SELECT";
      
      public static const const_58:String = "WE_SELECTED";
      
      public static const const_617:String = "WE_UNSELECT";
      
      public static const const_621:String = "WE_UNSELECTED";
      
      public static const const_1637:String = "WE_LOCK";
      
      public static const const_1799:String = "WE_LOCKED";
      
      public static const const_1644:String = "WE_UNLOCK";
      
      public static const const_1793:String = "WE_UNLOCKED";
      
      public static const const_879:String = "WE_ENABLE";
      
      public static const const_251:String = "WE_ENABLED";
      
      public static const const_773:String = "WE_DISABLE";
      
      public static const const_196:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_236:String = "WE_RELOCATED";
      
      public static const const_1261:String = "WE_RESIZE";
      
      public static const const_37:String = "WE_RESIZED";
      
      public static const const_1791:String = "WE_MINIMIZE";
      
      public static const const_1806:String = "WE_MINIMIZED";
      
      public static const const_1717:String = "WE_MAXIMIZE";
      
      public static const const_1606:String = "WE_MAXIMIZED";
      
      public static const const_1745:String = "WE_RESTORE";
      
      public static const const_1809:String = "WE_RESTORED";
      
      public static const const_498:String = "WE_CHILD_ADDED";
      
      public static const const_428:String = "WE_CHILD_REMOVED";
      
      public static const const_205:String = "WE_CHILD_RELOCATED";
      
      public static const const_146:String = "WE_CHILD_RESIZED";
      
      public static const const_312:String = "WE_CHILD_ACTIVATED";
      
      public static const const_609:String = "WE_PARENT_ADDED";
      
      public static const const_1556:String = "WE_PARENT_REMOVED";
      
      public static const const_1537:String = "WE_PARENT_RELOCATED";
      
      public static const const_712:String = "WE_PARENT_RESIZED";
      
      public static const const_1260:String = "WE_PARENT_ACTIVATED";
      
      public static const const_189:String = "WE_OK";
      
      public static const const_488:String = "WE_CANCEL";
      
      public static const const_107:String = "WE_CHANGE";
      
      public static const const_466:String = "WE_SCROLL";
      
      public static const const_184:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_701:IWindow;
      
      protected var var_1076:Boolean;
      
      protected var var_471:Boolean;
      
      protected var var_478:Boolean;
      
      protected var var_700:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_701 = param3;
         _loc5_.var_471 = param4;
         _loc5_.var_478 = false;
         _loc5_.var_700 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_701;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_471;
      }
      
      public function recycle() : void
      {
         if(this.var_478)
         {
            throw new Error("Event already recycled!");
         }
         this.var_701 = null;
         this._window = null;
         this.var_478 = true;
         this.var_1076 = false;
         this.var_700.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1076;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1076 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1076;
      }
      
      public function stopPropagation() : void
      {
         this.var_1076 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1076 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_471 + " window: " + this._window + " }";
      }
   }
}
