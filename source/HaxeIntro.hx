package;

#if desktop
import Discord.DiscordClient;
#end
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.addons.transition.FlxTransitionableState; // appearently its visual studio code
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.net.curl.CURLCode;
import flixel.graphics.FlxGraphic;
import WeekData;

using StringTools;

class HaxeIntro extends MusicBeatState
{
	#if windows
	var video:MP4Handler = new MP4Handler();
	#end

    override public function create():Void
	{
		#if windows
		video.playMP4(Paths.video('HaxeFlixelIntro'));
		video.finishCallback = function()
		{
			MusicBeatState.switchState(new TitleState());
		}
		#else
		MusicBeatState.switchState(new TitleState());
		#end
	}
}