package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_439:int = 1;
      
      public static const const_249:int = 2;
      
      public static const const_344:int = 3;
      
      public static const const_421:int = 4;
      
      public static const const_267:int = 5;
      
      public static const const_422:int = 1;
      
      public static const const_704:int = 2;
      
      public static const const_915:int = 3;
      
      public static const const_858:int = 4;
      
      public static const const_270:int = 5;
      
      public static const const_799:int = 6;
      
      public static const const_967:int = 7;
      
      public static const const_240:int = 8;
      
      public static const const_374:int = 9;
      
      public static const const_2059:int = 10;
      
      public static const const_924:int = 11;
      
      public static const const_607:int = 12;
       
      
      private var var_408:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_408 = new Array();
         this.var_408.push(new Tab(this._navigator,const_439,const_607,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_526));
         this.var_408.push(new Tab(this._navigator,const_249,const_422,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_526));
         this.var_408.push(new Tab(this._navigator,const_421,const_924,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1259));
         this.var_408.push(new Tab(this._navigator,const_344,const_270,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_526));
         this.var_408.push(new Tab(this._navigator,const_267,const_240,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_959));
         this.setSelectedTab(const_439);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_421;
      }
      
      public function get tabs() : Array
      {
         return this.var_408;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_408)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_408)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_408)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
