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
      
      public static const const_648:int = 6;
      
      public static const const_234:int = 5;
      
      public static const const_657:int = 2;
      
      public static const const_339:int = 9;
      
      public static const const_336:int = 4;
      
      public static const const_259:int = 2;
      
      public static const const_540:int = 4;
      
      public static const const_202:int = 8;
      
      public static const const_730:int = 7;
      
      public static const const_265:int = 3;
      
      public static const const_322:int = 1;
      
      public static const const_199:int = 5;
      
      public static const const_422:int = 12;
      
      public static const const_342:int = 1;
      
      public static const const_729:int = 11;
      
      public static const const_563:int = 3;
      
      public static const const_1545:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_389:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_389 = new Array();
         var_389.push(new Tab(_navigator,const_322,const_422,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_367));
         var_389.push(new Tab(_navigator,const_259,const_342,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_367));
         var_389.push(new Tab(_navigator,const_336,const_729,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_876));
         var_389.push(new Tab(_navigator,const_265,const_234,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_367));
         var_389.push(new Tab(_navigator,const_199,const_202,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_574));
         setSelectedTab(const_322);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_389)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_389)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_389)
         {
            _loc1_.selected = false;
         }
      }
      
      public function method_14() : Boolean
      {
         return this.getSelected().id == const_336;
      }
      
      public function get tabs() : Array
      {
         return var_389;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
