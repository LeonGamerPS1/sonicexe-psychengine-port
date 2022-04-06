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

class MiscSubstate extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Misc';
		rpcTitle = 'Misc Menu'; //for Discord Rich Presence

		function CacheRestart()
		{
			trace("Caching is now " + ClientPrefs.cache);

			LoadingState.loadAndSwitchState(new Startup());

			Startup.Restart = true;
		}

		var option:Option = new Option('Caching', //Name
		    'If checked, enables Caching,\nWill cause game to take longer to load.\n(WILL RESTART TO APPLY CHANGES)', //Description
		    'cache', //Save data variable name
		    'bool', //Variable type
		    true); //Default value
		option.onChange = CacheRestart;
	    addOption(option); //for some reason this doesnt save when you use it so no being able to disable caching

		super();
	}
}