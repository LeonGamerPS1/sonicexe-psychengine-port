package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class CustomSubState extends BaseOptionsMenu //YOU HAVE TO HAVE YOUR SUBSTATE NAME NEXT TO CLASS!!!!!!
{
	public function new()
	{
		title = 'Custom Menu'; //For the little title that appears in this menu
		rpcTitle = 'Custom Menu'; //for Discord Rich Presence

		var option:Option = new Option('Dialogue', //This name doesn't matter
			"If unchecked, disables dialogue\nMakes preformance smoother.", //Description, I recommend using "\n" like i did
			'Dialogue', //The name to use with lua, you are gonna have to use this name in "Funkin Lua" and "Clientprefs"
			'bool', //to be able to used with lua
			true); //If you want it to be Selected on default
		addOption(option); //to add it to the options menu

		//If you are gonna change this go to "FunkinLua" and "ClientPrefs" in source and search "Dialogue" then change all the shit in there or else it won't work

		super(); //don't remove this it will be hell to remember
	}
}