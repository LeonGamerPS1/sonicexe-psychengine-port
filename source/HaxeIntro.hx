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
		FlxG.bitmap.add(Paths.image("hitStatic"));
		trace("Cached: Hit Static");

		//Assets for Too Slow
		FlxG.bitmap.add(Paths.image("sonicJUMPSCARE"));
		trace("Cached: Too Slow Assets");

		//Assets for You Can't Run
		FlxG.bitmap.add(Paths.image("characters/BF", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Sonic_EXE_Pixel", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Pixel_gf", "shared"));
		trace("Cached: You Can't Run Assets");

		//Assets for Triple Trouble
		FlxG.bitmap.add(Paths.image("characters/BOYFRIEND", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Tails", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Beast", "shared"));
		FlxG.bitmap.add(Paths.image("characters/BFPhase3_Perspective", "shared"));
		FlxG.bitmap.add(Paths.image("characters/BFPhase3_Perspective_Flipped", "shared"));
		FlxG.bitmap.add(Paths.image("characters/KnucklesEXE", "shared"));
		FlxG.bitmap.add(Paths.image("characters/eggman_soul", "shared"));

		FlxG.bitmap.add(Paths.image("Phase3Static"));
		trace("Cached: Triple Trouble Assets");

		//Assets for Chaos
		FlxG.bitmap.add(Paths.image("characters/Super_BoyFriend_Assets", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Fleetway_Super_Sonic", "shared"));
		FlxG.bitmap.add(Paths.image("characters/fleetway1", "shared"));
		FlxG.bitmap.add(Paths.image("characters/fleetway2", "shared"));
		FlxG.bitmap.add(Paths.image("characters/fleetway3", "shared"));
		FlxG.bitmap.add(Paths.image("Warning"));
		FlxG.bitmap.add(Paths.image("spacebar_icon"));
		trace("Cached: Chaos Assets");

		trace("Done Caching!"); //this caching shit isnt from the original mod except for the chaos cache shit but yea i hate lag.

		#if windows
		video.playMP4(Paths.video("HaxeFlixelIntro"));
		video.finishCallback = function()
		{
			MusicBeatState.switchState(new TitleState());
		}
		#else
		MusicBeatState.switchState(new TitleState());
		#end
	}
}