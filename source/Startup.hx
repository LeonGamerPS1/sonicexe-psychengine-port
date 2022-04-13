package;

import flixel.graphics.FlxGraphic;
#if desktop
import Discord.DiscordClient;
#end
import lime.app.Application;
import Section.SwagSection;
import Song.SwagSong;
import WiggleEffect.WiggleEffectType;
import flixel.FlxBasic;
import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.effects.FlxTrail;
import flixel.addons.effects.FlxTrailArea;
import flixel.addons.effects.chainable.FlxEffectSprite;
import flixel.addons.effects.chainable.FlxWaveEffect;
import flixel.addons.transition.FlxTransitionableState;
import flixel.graphics.atlas.FlxAtlas;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.system.FlxSound;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxBar;
import flixel.util.FlxCollision;
import flixel.util.FlxColor;
import flixel.util.FlxSort;
import flixel.util.FlxStringUtil;
import flixel.util.FlxTimer;
import haxe.Json;
import lime.utils.Assets;
import openfl.Lib;
import openfl.display.BlendMode;
import openfl.display.StageQuality;
import openfl.filters.BitmapFilter;
import openfl.filters.ShaderFilter;
import openfl.utils.Assets as OpenFlAssets;
import editors.ChartingState;
import editors.CharacterEditorState;
import flixel.group.FlxSpriteGroup;
import flixel.input.keyboard.FlxKey;
import Note.EventNote;
import openfl.events.KeyboardEvent;
import flixel.util.FlxSave;
import Achievements;
import StageData;
import FunkinLua;
import DialogueBoxPsych;
#if sys
import sys.FileSystem;
#end

using StringTools;

class Startup extends MusicBeatState
{
	var text:String = 'Cached:';
	var defaultCamZoom:Float = 1.05;
	var poggers:FlxSprite = new FlxSprite(0, 0);
	public static var Restart:Bool = false;
	public static var Temporary:Bool = false;

	function Start():Void
	{
		#if windows
		if (ClientPrefs.Cutscenes);
		{
			var video:MP4Handler = new MP4Handler();
	
			video.playMP4(Paths.video("HaxeFlixelIntro"));
			video.finishCallback = function()
			{
				MusicBeatState.switchState(new TitleState());
			}
		}
		#else
		MusicBeatState.switchState(new TitleState());
		#end
	}

	function End():Void
	{
		#if desktop
		trace("Closing...");

		Sys.exit(0);
		#else
		trace("Shit i guess not...");
		#end
	}

	function CacheQuick():Void
	{
		Cache();
        
		new FlxTimer().start(0.2, function(tmr:FlxTimer)
		{
			//close();
		});
	}

	function Cache():Void
	{
		//Main Story Stuff
		FlxG.bitmap.add(Paths.image("characters/BOYFRIEND", "shared"));
		FlxG.bitmap.add(Paths.image("characters/GF_assets", "shared"));
		FlxG.bitmap.add(Paths.image("hitStatic"));

		poggers.frames = Paths.getSparrowAtlas('hitStatic');
		poggers.animation.addByPrefix('static', 'staticANIMATION', 24, false);
		poggers.animation.play('static');
		add(poggers);
		remove(poggers);
		trace(text + " Main Story Stuff");

		//Assets for Too Slow
		FlxG.bitmap.add(Paths.image("characters/Sonic_EXE_Assets", "shared")); //I AM GOD
		FlxG.bitmap.add(Paths.image("sonicJUMPSCARE"));

		poggers.frames = Paths.getSparrowAtlas('sonicJUMPSCARE');
		poggers.animation.addByPrefix('jump', 'sonicSPOOK', 24, false);
		add(poggers);
		poggers.animation.play('jump');
		trace(text + " Too Slow Assets");

		//Assets for You Can't Run
		FlxG.bitmap.add(Paths.image("characters/P2Sonic_Assets", "shared"));
		FlxG.bitmap.add(Paths.image("GreenHill"));
		FlxG.bitmap.add(Paths.image("characters/BF", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Sonic_EXE_Pixel", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Pixel_gf", "shared"));
		trace(text + " You Can't Run Assets");

		//Assets for Triple Trouble
		FlxG.bitmap.add(Paths.image("characters/Tails", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Beast", "shared"));
		FlxG.bitmap.add(Paths.image("characters/BFPhase3_Perspective", "shared"));
		FlxG.bitmap.add(Paths.image("characters/BFPhase3_Perspective_Flipped", "shared"));
		FlxG.bitmap.add(Paths.image("characters/KnucklesEXE", "shared"));
		FlxG.bitmap.add(Paths.image("characters/eggman_soul", "shared"));

		FlxG.bitmap.add(Paths.image("Phase3Static"));

		poggers.frames = Paths.getSparrowAtlas('Phase3Static');
		poggers.animation.addByPrefix('P3Static', 'Phase3Static instance 1', 24, false);
		add(poggers);
		poggers.animation.play('P3Static');
		remove(poggers);
		trace(text + " Triple Trouble Assets");

		//Assets for Endless
		FlxG.bitmap.add(Paths.image("FunInfiniteStage/three"));
		FlxG.bitmap.add(Paths.image("FunInfiniteStage/two"));
		FlxG.bitmap.add(Paths.image("FunInfiniteStage/one"));
		FlxG.bitmap.add(Paths.image("FunInfiniteStage/gofun"));
		trace(text + " Endless Assets");

		//Assets for Chaos
		FlxG.bitmap.add(Paths.image("characters/Super_BoyFriend_Assets", "shared"));
		FlxG.bitmap.add(Paths.image("characters/Fleetway_Super_Sonic", "shared"));
		FlxG.bitmap.add(Paths.image("characters/fleetway1", "shared"));
		FlxG.bitmap.add(Paths.image("characters/fleetway2", "shared"));
		FlxG.bitmap.add(Paths.image("characters/fleetway3", "shared"));
		FlxG.bitmap.add(Paths.image("Warning"));
		FlxG.bitmap.add(Paths.image("spacebar_icon"));
		trace(text + " Chaos Assets");

		//Camera Shit (this was so zoom inside endless wasn't laggy)
		FlxTween.tween(FlxG.camera, {zoom: FlxG.camera.zoom + 0.3}, 0.7, {ease: FlxEase.cubeInOut});
		FlxTween.tween(FlxG.camera, {zoom: FlxG.camera.zoom + 0.3}, 0.7, {ease: FlxEase.cubeInOut});
		FlxTween.tween(FlxG.camera, {zoom: FlxG.camera.zoom + 0.3}, 0.7, {ease: FlxEase.cubeInOut});
		FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom}, 0.7, {ease: FlxEase.cubeInOut});
		trace(text + " Camera Stuff");

		trace("Done Caching!"); //this caching shit isnt from the original mod except for the chaos cache shit but yea i hate lag.
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

		/* //this just breaks it so just forget it lmao
		if (Restart)
		{
			End();
		}
		*/

		if(Temporary)
		{
            CacheQuick();
		}

		if (!ClientPrefs.cache)//main thing
		{
			Start();
		}
		else if (ClientPrefs.cache)
		{
			Cache();

			Start();
		}
	}
}