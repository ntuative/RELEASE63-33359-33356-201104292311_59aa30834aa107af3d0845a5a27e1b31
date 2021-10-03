package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2991:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_81 = param1.desktop;
         var_62 = param1.var_1329 as WindowController;
         var_173 = param1.var_1328 as WindowController;
         var_166 = param1.renderer;
         var_877 = param1.var_1326;
         param2.begin();
         param2.end();
         param1.desktop = var_81;
         param1.var_1329 = var_62;
         param1.var_1328 = var_173;
         param1.renderer = var_166;
         param1.var_1326 = var_877;
      }
   }
}
