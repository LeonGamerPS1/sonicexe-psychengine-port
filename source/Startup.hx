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
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;
import lime.net.curl.CURLCode;
import flixel.graphics.FlxGraphic;
import flixel.util.FlxSave;
import WeekData;
import Achievements;
import StageData;
import FunkinLua;
import DialogueBoxPsych;

using StringTools;

class Startup extends MusicBeatState
{
	public var defaultCamZoom:Float = 1.05;

	var daJumpscare:FlxSprite = new FlxSprite(0, 0);
	var daNoteStatic:FlxSprite = new FlxSprite(0, 0);
	var daP3Static:FlxSprite = new FlxSprite(0, 0);

	#if windows
	var video:MP4Handler = new MP4Handler();
	#end

	function Cache():Void
	{
		//Main Story Stuff
		FlxG.bitmap.add(Paths.image("characters/BOYFRIEND", "shared"));
		FlxG.bitmap.add(Paths.image("characters/GF_assets", "shared"));
		FlxG.bitmap.add(Paths.image("hitStatic"));

		daNoteStatic.frames = Paths.getSparrowAtlas('hitStatic');
		daNoteStatic.animation.addByPrefix('static', 'staticANIMATION', 24, false);
		daNoteStatic.animation.play('static');
		remove(daNoteStatic);
		trace("Cached: Main Story Stuff");

		//Assets for Too Slow
		FlxG.bitmap.add(Paths.image("characters/Sonic_EXE_Assets", "shared")); //I AM GOD
		FlxG.bitmap.add(Paths.image("sonicJUMPSCARE"));

		daJumpscare.frames = Paths.getSparrowAtlas('sonicJUMPSCARE');
		daJumpscare.animation.addByPrefix('jump', 'sonicSPOOK', 24, false);
		add(daJumpscare);
		daJumpscare.animation.play('jump');
		remove(daJumpscare);
		trace("Cached: Too Slow Assets");

		//Assets for You Can't Run
		FlxG.bitmap.add(Paths.image("characters/P2Sonic_Assets", "shared"));
		FlxG.bitmap.add(Paths.image("GreenHill"));
		FlxG.bitmap.add(Paths.image("characters/BF", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Sonic_EXE_Pixel", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Pixel_gf", "shared"));
		trace("Cached: You Can't Run Assets");

		//Assets for Triple Trouble
		FlxG.bitmap.add(Paths.image("characters/Tails", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Beast", "shared"));
		FlxG.bitmap.add(Paths.image("characters/BFPhase3_Perspective", "shared"));
		FlxG.bitmap.add(Paths.image("characters/BFPhase3_Perspective_Flipped", "shared"));
		FlxG.bitmap.add(Paths.image("characters/KnucklesEXE", "shared"));
		FlxG.bitmap.add(Paths.image("characters/eggman_soul", "shared"));

		FlxG.bitmap.add(Paths.image("Phase3Static"));

		daP3Static.frames = Paths.getSparrowAtlas('Phase3Static');
		daP3Static.animation.addByPrefix('P3Static', 'Phase3Static instance 1', 24, false);
		add(daP3Static);
		daP3Static.animation.play('P3Static');
		remove(daP3Static);
		trace("Cached: Triple Trouble Assets");

		//Assets for Endless
		FlxG.bitmap.add(Paths.image("FunInfiniteStage/three"));
		FlxG.bitmap.add(Paths.image("FunInfiniteStage/two"));
		FlxG.bitmap.add(Paths.image("FunInfiniteStage/one"));
		FlxG.bitmap.add(Paths.image("FunInfiniteStage/gofun"));
		trace("Cached: Endless Assets");

		//Assets for Chaos
		FlxG.bitmap.add(Paths.image("characters/Super_BoyFriend_Assets", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Fleetway_Super_Sonic", "shared"));
		FlxG.bitmap.add(Paths.image("characters/fleetway1", "shared"));
		FlxG.bitmap.add(Paths.image("characters/fleetway2", "shared"));
		FlxG.bitmap.add(Paths.image("characters/fleetway3", "shared"));
		FlxG.bitmap.add(Paths.image("Warning"));
		FlxG.bitmap.add(Paths.image("spacebar_icon"));
		trace("Cached: Chaos Assets");

		//Camera Shit (this was so zoom in endless wasn't laggy)
		FlxTween.tween(FlxG.camera, {zoom: FlxG.camera.zoom + 0.3}, 0.7, {ease: FlxEase.cubeInOut});
		FlxTween.tween(FlxG.camera, {zoom: FlxG.camera.zoom + 0.3}, 0.7, {ease: FlxEase.cubeInOut});
		FlxTween.tween(FlxG.camera, {zoom: FlxG.camera.zoom + 0.3}, 0.7, {ease: FlxEase.cubeInOut});
		FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom}, 0.7, {ease: FlxEase.cubeInOut});
		trace("Cached: Camera Stuff");

		trace("Done Caching!"); //this caching shit isnt from the original mod except for the chaos cache shit but yea i hate lag.
	}

	function Start():Void
	{
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

    override public function create():Void
	{
		FlxG.mouse.visible = false;

		#if desktop
		if (!DiscordClient.isInitialized)
		{
			DiscordClient.initialize();
			Application.current.onExit.add (function (exitCode) {
				DiscordClient.shutdown();
			});
		}
		#end

		if (ClientPrefs.cache) //main thing
		{
			Cache();

			Start();
		}
		else if (!ClientPrefs.cache) //this shit doesnt even work lol
		{
			Start();
		}
	}
}