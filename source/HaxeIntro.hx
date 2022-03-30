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
		FlxG.mouse.visible = false;

		//main story song shit
		FlxG.bitmap.add(Paths.image('Phase3Static'));
		trace('Cached: Phase 3 Static');

		FlxG.bitmap.add(Paths.image('hitStatic'));
		trace('Cached: Hit Static');

		//too slow
		FlxG.bitmap.add(Paths.image('sonicJUMPSCARE'));
		trace('Cached: Jumpscare');

		//chaos shit
		FlxG.bitmap.add(Paths.image('characters/Super_BoyFriend_Assets', 'shared'));
		trace('Cached: Super Boyfriend Assets');

		FlxG.bitmap.add(Paths.image('characters/Fleetway_Super_Sonic', 'shared'));
		FlxG.bitmap.add(Paths.image('characters/fleetway1', 'shared'));
		FlxG.bitmap.add(Paths.image('characters/fleetway2', 'shared'));
		FlxG.bitmap.add(Paths.image('characters/fleetway3', 'shared'));
		trace('Cached: Fleetway Assets');

		FlxG.bitmap.add(Paths.image('Warning'));
		trace('Cached: Warning');
		FlxG.bitmap.add(Paths.image('spacebar_icon'));
		trace('Cached: Spacebar Icon');

		trace('Done Caching!'); //this caching shit isnt from the original mod except for the chaos cache shit but yea i hate lag.

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