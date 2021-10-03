package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_194:IWindowContainer;
      
      private var var_2961:int;
      
      private var var_377:RoomEventViewCtrl;
      
      private var var_271:Timer;
      
      private var var_190:RoomSettingsCtrl;
      
      private var var_272:RoomThumbnailCtrl;
      
      private var var_1248:TagRenderer;
      
      private var var_312:IWindowContainer;
      
      private var var_450:IWindowContainer;
      
      private var var_823:IWindowContainer;
      
      private var var_2699:IWindowContainer;
      
      private var var_2700:IWindowContainer;
      
      private var var_1538:IWindowContainer;
      
      private var var_931:ITextWindow;
      
      private var var_1256:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_1009:ITextWindow;
      
      private var var_1542:ITextWindow;
      
      private var var_1255:ITextWindow;
      
      private var var_1011:ITextWindow;
      
      private var var_1981:ITextWindow;
      
      private var var_273:IWindowContainer;
      
      private var var_1008:IWindowContainer;
      
      private var var_1984:IWindowContainer;
      
      private var var_2690:ITextWindow;
      
      private var var_824:ITextWindow;
      
      private var var_2698:IWindow;
      
      private var var_1539:IContainerButtonWindow;
      
      private var var_1537:IContainerButtonWindow;
      
      private var var_1543:IContainerButtonWindow;
      
      private var var_1541:IContainerButtonWindow;
      
      private var var_1544:IContainerButtonWindow;
      
      private var var_1983:IButtonWindow;
      
      private var var_1982:IButtonWindow;
      
      private var var_1980:IButtonWindow;
      
      private var var_1010:IWindowContainer;
      
      private var var_1540:ITextWindow;
      
      private var var_1254:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_1253:IButtonWindow;
      
      private var var_1007:IButtonWindow;
      
      private var var_2697:String;
      
      private var var_2696:String;
      
      private var var_449:Boolean = true;
      
      private const const_512:int = 75;
      
      private const const_592:int = 3;
      
      private const const_571:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_377 = new RoomEventViewCtrl(this._navigator);
         this.var_190 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_272 = new RoomThumbnailCtrl(this._navigator);
         this.var_1248 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_190);
         this.var_271 = new Timer(6000,1);
         this.var_271.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_106,this.onToolbarIconState);
         }
         if(this.var_271)
         {
            this.var_271.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_271.reset();
            this.var_271 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_271.reset();
         this.var_377.active = true;
         this.var_190.active = false;
         this.var_272.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_271.reset();
         this.var_190.load(param1);
         this.var_190.active = true;
         this.var_377.active = false;
         this.var_272.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_190.active = true;
         this.var_377.active = false;
         this.var_272.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_271.reset();
         this.var_190.active = false;
         this.var_377.active = false;
         this.var_272.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this.var_449)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1171,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_271.reset();
         this.var_377.active = false;
         this.var_190.active = false;
         this.var_272.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         if(this.var_449)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_57,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_271.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_271.reset();
         this.var_377.active = false;
         this.var_190.active = false;
         this.var_272.active = false;
         this.refresh();
         if(this.var_449)
         {
            if(!this._window.visible)
            {
               this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_57,HabboToolbarIconEnum.ROOMINFO,this._window,false));
               this._window.parent.activate();
            }
            else
            {
               this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_473,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            }
         }
         else
         {
            this._window.visible = !this._window.visible;
            this._window.x = this._window.desktop.width - this._window.width - this.const_592;
            this._window.y = this.const_512;
            if(this._window.visible)
            {
               this._window.activate();
            }
         }
      }
      
      private function refresh() : void
      {
         var _loc1_:int = 0;
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         if(this.var_449)
         {
            Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
            this._window.height = Util.getLowestPoint(this._window);
            this._window.y = this._window.desktop.height - this._window.height - 5;
            Logger.log("MAIN: " + this.var_312.rectangle + ", " + this.var_273.rectangle + ", " + this._window.rectangle);
         }
         else
         {
            Util.moveChildrenToColumn(this.var_194,["room_info","event_info","embed_info","buttons_container"],0,2);
            this.var_194.height = Util.getLowestPoint(this.var_194);
            _loc1_ = this._window.desktop.height - this._window.height - this.const_571;
            if(this._window.y > _loc1_)
            {
               this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
            }
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_312);
         if(this.var_449)
         {
            this.var_312.findChildByName("close").visible = true;
         }
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_190.refresh(this.var_312);
         this.var_272.refresh(this.var_312);
         Util.moveChildrenToColumn(this.var_312,["room_details","room_buttons"],0,2);
         this.var_312.height = Util.getLowestPoint(this.var_312);
         this.var_312.visible = true;
         Logger.log("XORP: " + this.var_450.visible + ", " + this.var_1538.visible + ", " + this.var_823.visible + ", " + this.var_823.rectangle + ", " + this.var_312.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_273);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_377.refresh(this.var_273);
         if(Util.hasVisibleChildren(this.var_273) && !(this.var_190.active || this.var_272.active))
         {
            Util.moveChildrenToColumn(this.var_273,["event_details","event_buttons"],0,2);
            this.var_273.height = Util.getLowestPoint(this.var_273);
            this.var_273.visible = true;
         }
         else
         {
            this.var_273.visible = false;
         }
         Logger.log("EVENT: " + this.var_273.visible + ", " + this.var_273.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","WiredFurniTriggerMessageParser") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_190.active && !this.var_272.active && !this.var_377.active)
         {
            this.var_1010.visible = true;
            this.var_1254.text = this.getEmbedData();
         }
         else
         {
            this.var_1010.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_190.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_1253)
         {
            if(this.var_2697 == "exit_homeroom")
            {
               this.var_1253.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1253.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_1007)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_1007.visible = _loc1_;
            if(this.var_2696 == "0")
            {
               this.var_1007.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_1007.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_190.active || this.var_272.active)
         {
            return;
         }
         this.var_931.text = param1.roomName;
         this.var_931.height = this.var_931.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_1009.text = param1.description;
         this.var_1248.refreshTags(this.var_450,param1.tags);
         this.var_1009.visible = false;
         if(param1.description != "")
         {
            this.var_1009.height = this.var_1009.textHeight + 5;
            this.var_1009.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1537,"facebook_logo_small",_loc3_,null,0);
         this.var_1537.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1539,"thumb_up",_loc4_,null,0);
         this.var_1539.visible = _loc4_;
         this.var_1011.visible = !_loc4_;
         this.var_1981.visible = !_loc4_;
         this.var_1981.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_450,"home",param2,null,0);
         this._navigator.refreshButton(this.var_450,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_450,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_931.y,0);
         this.var_450.visible = true;
         this.var_450.height = Util.getLowestPoint(this.var_450);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_450.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_190.active || this.var_272.active)
         {
            return;
         }
         this.var_1256.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1256.height = this.var_1256.textHeight + 5;
         this.var_1542.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1542.height = this.var_1542.textHeight + 5;
         Util.moveChildrenToColumn(this.var_823,["public_space_name","public_space_desc"],this.var_1256.y,0);
         this.var_823.visible = true;
         this.var_823.height = Math.max(86,Util.getLowestPoint(this.var_823));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_377.active)
         {
            return;
         }
         this.var_2690.text = param1.eventName;
         this.var_824.text = param1.eventDescription;
         this.var_1248.refreshTags(this.var_1008,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_824.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_824.height = this.var_824.textHeight + 5;
            this.var_824.y = Util.getLowestPoint(this.var_1008) + 2;
            this.var_824.visible = true;
         }
         this.var_1008.visible = true;
         this.var_1008.height = Util.getLowestPoint(this.var_1008);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_190.active || this.var_272.active)
         {
            return;
         }
         this.var_1983.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1543.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1541.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1544.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1538.visible = Util.hasVisibleChildren(this.var_1538);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_377.active)
         {
            return;
         }
         this.var_1982.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1980.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1984.visible = Util.hasVisibleChildren(this.var_1984);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         if(this.var_449)
         {
            this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
            this._window.setParamFlag(HabboWindowParam.const_61,false);
            this._window.setParamFlag(HabboWindowParam.const_1702,true);
         }
         else
         {
            this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
            this.var_194 = this._window.findChildByName("content") as IWindowContainer;
         }
         this._window.visible = false;
         this.var_312 = IWindowContainer(this.find("room_info"));
         this.var_450 = IWindowContainer(this.find("room_details"));
         this.var_823 = IWindowContainer(this.find("public_space_details"));
         this.var_2699 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2700 = IWindowContainer(this.find("rating_cont"));
         this.var_1538 = IWindowContainer(this.find("room_buttons"));
         this.var_931 = ITextWindow(this.find("room_name"));
         this.var_1256 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_1009 = ITextWindow(this.find("room_desc"));
         this.var_1542 = ITextWindow(this.find("public_space_desc"));
         this.var_1255 = ITextWindow(this.find("owner_caption"));
         this.var_1011 = ITextWindow(this.find("rating_caption"));
         this.var_1981 = ITextWindow(this.find("rating_txt"));
         this.var_273 = IWindowContainer(this.find("event_info"));
         this.var_1008 = IWindowContainer(this.find("event_details"));
         this.var_1984 = IWindowContainer(this.find("event_buttons"));
         this.var_2690 = ITextWindow(this.find("event_name"));
         this.var_824 = ITextWindow(this.find("event_desc"));
         this.var_1537 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1539 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2698 = this.find("staff_pick_button");
         this.var_1543 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1541 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1544 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1983 = IButtonWindow(this.find("room_settings_button"));
         this.var_1982 = IButtonWindow(this.find("create_event_button"));
         this.var_1980 = IButtonWindow(this.find("edit_event_button"));
         this.var_1010 = IWindowContainer(this.find("embed_info"));
         this.var_1540 = ITextWindow(this.find("embed_info_txt"));
         this.var_1254 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_1253 = IButtonWindow(this.find("exit_room_button"));
         this.var_1007 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1543,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1541,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1983,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1544,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1982,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1980,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1254,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1539,this.onThumbUp);
         Util.setProcDirectly(this.var_2698,this.onStaffPick);
         Util.setProcDirectly(this.var_1537,this.onFacebookLike);
         Util.setProcDirectly(this.var_1007,this.onZoomClick);
         Util.setProcDirectly(this.var_1253,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1543,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1541,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1544,"home",true,null,0);
         if(this.var_449)
         {
            this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         }
         else
         {
            this._window.findChildByTag("close").procedure = this.onCloseButtonClick;
         }
         Util.setProcDirectly(this.var_312,this.onHover);
         Util.setProcDirectly(this.var_273,this.onHover);
         this.var_1255.width = this.var_1255.textWidth;
         Util.moveChildrenToRow(this.var_2699,["owner_caption","owner_name"],this.var_1255.x,this.var_1255.y,3);
         this.var_1011.width = this.var_1011.textWidth;
         Util.moveChildrenToRow(this.var_2700,["rating_caption","rating_txt"],this.var_1011.x,this.var_1011.y,3);
         this.var_1540.height = this.var_1540.textHeight + 5;
         Util.moveChildrenToColumn(this.var_1010,["embed_info_txt","embed_src_txt"],this.var_1540.y,2);
         this.var_1010.height = Util.getLowestPoint(this.var_1010) + 5;
         this.var_2961 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1254.setSelection(0,this.var_1254.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_36);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_36);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_106)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2696 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2697 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_271.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         if(this.var_449)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_473,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
         else
         {
            this._window.visible = false;
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_106,this.onToolbarIconState);
         }
      }
      
      public function handleToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type != HabboToolbarEvent.const_36)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.MEMENU:
               if(this.useToolbar)
               {
                  this.close();
               }
               break;
            case HabboToolbarIconEnum.ROOMINFO:
               this.toggle();
         }
      }
      
      public function configure() : void
      {
         if(this._navigator.configuration)
         {
            this.var_449 = this._navigator.configuration.getKey("roominfo.widget.enabled") != "1";
         }
      }
      
      public function get useToolbar() : Boolean
      {
         return this.var_449;
      }
   }
}
