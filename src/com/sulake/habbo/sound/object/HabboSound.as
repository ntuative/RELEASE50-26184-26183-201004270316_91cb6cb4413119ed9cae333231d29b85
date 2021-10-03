package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1018:SoundChannel = null;
      
      private var var_836:Boolean;
      
      private var var_1019:Sound = null;
      
      private var var_711:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1019 = param1;
         var_1019.addEventListener(Event.COMPLETE,method_4);
         var_711 = 1;
         var_836 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_836;
      }
      
      public function stop() : Boolean
      {
         var_1018.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_836 = false;
         var_1018 = var_1019.play(0);
         this.volume = var_711;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_711;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1018.position;
      }
      
      public function get length() : Number
      {
         return var_1019.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_711 = param1;
         if(var_1018 != null)
         {
            var_1018.soundTransform = new SoundTransform(var_711);
         }
      }
      
      private function method_4(param1:Event) : void
      {
         var_836 = true;
      }
   }
}
