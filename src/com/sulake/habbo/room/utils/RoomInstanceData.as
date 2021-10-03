package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_748:TileHeightMap = null;
      
      private var var_1162:LegacyWallGeometry = null;
      
      private var var_1161:RoomCamera = null;
      
      private var var_749:SelectedRoomObjectData = null;
      
      private var var_747:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_503:Map;
      
      private var var_502:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_503 = new Map();
         this.var_502 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1162 = new LegacyWallGeometry();
         this.var_1161 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_748;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_748 != null)
         {
            this.var_748.dispose();
         }
         this.var_748 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1162;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1161;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_749;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_749 != null)
         {
            this.var_749.dispose();
         }
         this.var_749 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_747;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_747 != null)
         {
            this.var_747.dispose();
         }
         this.var_747 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_748 != null)
         {
            this.var_748.dispose();
            this.var_748 = null;
         }
         if(this.var_1162 != null)
         {
            this.var_1162.dispose();
            this.var_1162 = null;
         }
         if(this.var_1161 != null)
         {
            this.var_1161.dispose();
            this.var_1161 = null;
         }
         if(this.var_749 != null)
         {
            this.var_749.dispose();
            this.var_749 = null;
         }
         if(this.var_747 != null)
         {
            this.var_747.dispose();
            this.var_747 = null;
         }
         if(this.var_503 != null)
         {
            this.var_503.dispose();
            this.var_503 = null;
         }
         if(this.var_502 != null)
         {
            this.var_502.dispose();
            this.var_502 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_503.remove(param1.id);
            this.var_503.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_503.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_503.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_503.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_502.remove(param1.id);
            this.var_502.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_502.length > 0)
         {
            return this.getWallItemDataWithId(this.var_502.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_502.remove(param1);
      }
   }
}
