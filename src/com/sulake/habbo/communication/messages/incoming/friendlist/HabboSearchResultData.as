package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2166:int;
      
      private var var_1913:String;
      
      private var var_2165:String;
      
      private var var_2164:Boolean;
      
      private var var_2167:Boolean;
      
      private var var_2162:int;
      
      private var var_2163:String;
      
      private var var_2168:String;
      
      private var var_1912:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2166 = param1.readInteger();
         this.var_1913 = param1.readString();
         this.var_2165 = param1.readString();
         this.var_2164 = param1.readBoolean();
         this.var_2167 = param1.readBoolean();
         param1.readString();
         this.var_2162 = param1.readInteger();
         this.var_2163 = param1.readString();
         this.var_2168 = param1.readString();
         this.var_1912 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2166;
      }
      
      public function get avatarName() : String
      {
         return this.var_1913;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2165;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2164;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2167;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2162;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2163;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2168;
      }
      
      public function get realName() : String
      {
         return this.var_1912;
      }
   }
}
