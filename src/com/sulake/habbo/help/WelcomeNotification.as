package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2895:String;
      
      private var var_2897:String;
      
      private var var_2896:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2895 = param1;
         this.var_2897 = param2;
         this.var_2896 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2895;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2897;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2896;
      }
   }
}
