#if sys
package;
import flixel.graphics.FlxGraphic;
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
import flixel.system.FlxAssets.FlxShader;
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
import openfl.display.Shader;
import openfl.display.StageQuality;
import openfl.filters.BitmapFilter;
import openfl.filters.ShaderFilter;
import openfl.utils.Assets as OpenFlAssets;
import editors.ChartingState;
import editors.CharacterEditorState;
import flixel.group.FlxSpriteGroup;
import flixel.input.keyboard.FlxKey;
import openfl.events.KeyboardEvent;
import Achievements;
import StageData;
import FunkinLua;
import DialogueBoxPsych;
import Shaders;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.math.FlxPoint;
import flixel.util.FlxTimer;
import flixel.text.FlxText;
import flixel.system.FlxSound;
import lime.app.Application;
import openfl.utils.Assets as OpenFlAssets;
#if desktop
import Discord.DiscordClient;
#end
import openfl.display.BitmapData;
import openfl.utils.Assets;
import haxe.Exception;
import flixel.tweens.FlxEase;
import flixel.util.FlxColor;
import flixel.tweens.FlxTween;
#if sys
import sys.FileSystem;
import sys.io.File;
#end

using StringTools;

class Cache extends MusicBeatState
{
	public static var bitmapData:Map<String,FlxGraphic>;
	public static var bitmapData2:Map<String,FlxGraphic>;

	var images = [];
	var sounds = [];
	var xmls = [];
	var data = [];
	var lua = [];

	var funkay:FlxSprite;
	var loadBar:FlxSprite;

	override function create()
	{
		FlxG.mouse.visible = false;

		FlxG.worldBounds.set(0,0);

		bitmapData = new Map<String,FlxGraphic>();
		bitmapData2 = new Map<String,FlxGraphic>();

		var bg:FlxSprite = new FlxSprite(0, 0).makeGraphic(FlxG.width, FlxG.height, 0xffcaff4d);
		add(bg);
		funkay = new FlxSprite(0, 0).loadGraphic(Paths.getPath('images/funkay.png', IMAGE));
		funkay.setGraphicSize(0, FlxG.height);
		funkay.updateHitbox();
		funkay.antialiasing = ClientPrefs.globalAntialiasing;
		add(funkay);
		funkay.scrollFactor.set();
		funkay.screenCenter();

		loadBar = new FlxSprite(0, FlxG.height - 20).makeGraphic(FlxG.width, 10, 0xffff16d2);
		loadBar.screenCenter(X);
		loadBar.antialiasing = ClientPrefs.globalAntialiasing;
		add(loadBar);

		#if cpp
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/tutorial")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
			
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/tutorial")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/tutorial")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/bopeebo")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/bopeebo")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/bopeebo")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/fresh")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/fresh")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/fresh")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/dad-battle")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/dad-battle")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/dad-battle")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/spookeez")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/spookeez")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/south")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/south")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/monster")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/monster")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/pico")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/pico")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/philly-nice")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/philly-nice")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/blammed")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/blammed")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/satin-panties")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/satin-panties")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/high")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/high")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/milf")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/milf")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/cocoa")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/cocoa")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/eggnog")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/eggnog")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/winter-horrorland")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/winter-horrorland")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/senpai")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/senpai")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/roses")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/roses")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/songs/thorns")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/data/thorns")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/shared/images/characters")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
        }
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/shared/images/characters")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/shared/images")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
			
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/shared/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/sounds")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/music")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/shared/music")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/shared/sounds")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week2/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week2/sounds")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week3/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week3/sounds")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week4/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week4/sounds")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week5/images/christmas")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week5/sounds")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week6/images/weeb")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week6/sounds")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week6/music")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/images/icons")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/images/menucharacters")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/achievements")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/icons")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/images")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week2/images")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week2/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week3/images")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week3/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week4/images")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week4/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week5/images/christmas")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week5/images/christmas")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week6/images/weeb")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/week6/images/weeb")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/images/icons")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
			
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/images/menucharacters")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/images/menucharacters")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/images/menucharacters")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("assets/characters")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/characters")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/characters")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/menubackgrounds")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/storymenu")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/menucharacters")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/menucharacters")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/dialogue")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/dialogue")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/characters")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/sounds")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/Jumpscare")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/Jumpscare")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/LordXStage")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/LordXStage")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/FunInfiniteStage")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/FunInfiniteStage")))
		{
			if (!i.endsWith(".xml"))
				continue;
			xmls.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/sounds")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/songs/cutscene1")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/data/cutscene1")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/data/cutscene1")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/songs/too-slow")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/data/too-slow")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/data/too-slow")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/songs/you-cant-run")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/data/you-cant-run")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}
	
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/data/you-cant-run")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/songs/endless")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/data/endless")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}
		
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/data/endless")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/songs/cycles")))
		{
			if (!i.endsWith(".ogg"))
				continue;
			sounds.push(i);
		}
			
		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/data/cycles")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/images/icons")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}	

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/achievements")))
		{
			if (!i.endsWith(".png"))
				continue;
			images.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/stages")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/stages")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/weeks")))
		{
			if (!i.endsWith(".json"))
				continue;
			data.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/custom_notetypes")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/custom_events")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		for (i in FileSystem.readDirectory(FileSystem.absolutePath("mods/SonicEXE/scripts")))
		{
			if (!i.endsWith(".lua"))
				continue;
			lua.push(i);
		}

		#end

		sys.thread.Thread.create(() -> {
			cache();
		});

		super.create();
	}

	override function update(elapsed) 
	{
		super.update(elapsed);
	}

	function cache()
	{
		for (i in images)
		{
			var replaced = i.replace(".png", "");
			var data:BitmapData = BitmapData.fromFile("assets/shared/images/characters/" + i);
			var graph = FlxGraphic.fromBitmapData(data);
			graph.persist = true;
			graph.destroyOnNoUse = false;
			bitmapData.set(replaced,graph);
			trace(i);
		}		
		for (i in xmls)
		{
			var replaced = i.replace(".xml", "");
			var data:BitmapData = BitmapData.fromFile("assets/shared/images/characters/" + i);
			var graph = FlxGraphic.fromBitmapData(data);
			graph.persist = true;
			graph.destroyOnNoUse = false;
			bitmapData.set(replaced,graph);
			trace(i);
		}
		for (i in sounds)
		{
			var replaced = i.replace(".ogg", "");
			var data:BitmapData = BitmapData.fromFile("assets/shared/images/characters/" + i);
			var graph = FlxGraphic.fromBitmapData(data);
			graph.persist = true;
			graph.destroyOnNoUse = false;
			bitmapData.set(replaced,graph);
			trace(i);
		}
		for (i in data)
		{
			var replaced = i.replace(".json", "");
			var data:BitmapData = BitmapData.fromFile("assets/shared/images/characters/" + i);
			var graph = FlxGraphic.fromBitmapData(data);
			graph.persist = true;
			graph.destroyOnNoUse = false;
			bitmapData.set(replaced,graph);
			trace(i);
		}
		for (i in lua)
		{
			var replaced = i.replace(".lua", "");
			var data:BitmapData = BitmapData.fromFile("assets/shared/images/characters/" + i);
			var graph = FlxGraphic.fromBitmapData(data);
			graph.persist = true;
			graph.destroyOnNoUse = false;
			bitmapData.set(replaced,graph);
			trace(i);
		}

		FlxG.switchState(new TitleState());

		trace('Done Caching!');

	}

}
#end