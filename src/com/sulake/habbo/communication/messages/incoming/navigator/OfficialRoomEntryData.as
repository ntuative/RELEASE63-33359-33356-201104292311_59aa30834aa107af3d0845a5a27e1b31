package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1186:int = 1;
      
      public static const const_775:int = 2;
      
      public static const const_749:int = 3;
      
      public static const const_1567:int = 4;
       
      
      private var _index:int;
      
      private var var_2195:String;
      
      private var var_2196:String;
      
      private var var_2194:Boolean;
      
      private var var_2192:String;
      
      private var var_902:String;
      
      private var var_2193:int;
      
      private var var_2161:int;
      
      private var _type:int;
      
      private var var_2182:String;
      
      private var var_894:GuestRoomData;
      
      private var var_893:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2195 = param1.readString();
         this.var_2196 = param1.readString();
         this.var_2194 = param1.readInteger() == 1;
         this.var_2192 = param1.readString();
         this.var_902 = param1.readString();
         this.var_2193 = param1.readInteger();
         this.var_2161 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1186)
         {
            this.var_2182 = param1.readString();
         }
         else if(this._type == const_749)
         {
            this.var_893 = new PublicRoomData(param1);
         }
         else if(this._type == const_775)
         {
            this.var_894 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_894 != null)
         {
            this.var_894.dispose();
            this.var_894 = null;
         }
         if(this.var_893 != null)
         {
            this.var_893.dispose();
            this.var_893 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2195;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2196;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2194;
      }
      
      public function get picText() : String
      {
         return this.var_2192;
      }
      
      public function get picRef() : String
      {
         return this.var_902;
      }
      
      public function get folderId() : int
      {
         return this.var_2193;
      }
      
      public function get tag() : String
      {
         return this.var_2182;
      }
      
      public function get userCount() : int
      {
         return this.var_2161;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_894;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_893;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1186)
         {
            return 0;
         }
         if(this.type == const_775)
         {
            return this.var_894.maxUserCount;
         }
         if(this.type == const_749)
         {
            return this.var_893.maxUsers;
         }
         return 0;
      }
   }
}
