package org.tamaki.events
{   
	import flash.events.*;
	public class NMEvent extends Event
	{
        private var _$info:Object;
        private var _$type:String;
		public static const PLAY_HEAD_UPDATE:String = "playHeadUpdate"
		public static const PROGRESS:String = "progress"
		public static const COMPLETE:String = "complete"
        public static const STATE_CHANGE:String = "stateChange"
        public static const VIDEO_NOT_FOUND:String = "videoNotFound"
        public static const META_LOADED:String = "metaLoaded"
        public static const URL_COMPLETE:String = "urlComplete"
        public function NMEvent(param1:String, param2:Object = 0)
        {
            super(param1);
            _$type = param1;
            _$info = param2;
            return;
        }// end function

        override public function clone() : Event
        {
            return new NSEvent(_$type, _$info);
        }// end function

        public function get info():Object
        {
            return _$info;
        }// end function
	}
}