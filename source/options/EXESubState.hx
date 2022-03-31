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

class EXESubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'EXE Settings';
		rpcTitle = 'EXE Settings Menu'; //for Discord Rich Presence

		function onChangeShaders()
		{
			trace('Shaders are ' + ClientPrefs.sonicExeShaders);
		}

		var option:Option = new Option('Cutscenes', //Name
		    'If checked, enables Cutscenes in EXE Songs,\nMac/Linux/Window32bit users need to have this off or game will crash.', //Description
		    'Cutscenes', //Save data variable name
		    'bool', //Variable type
		    true); //Default value
	    addOption(option);

		var option:Option = new Option('Jumpscare', //Name
		    'If checked, enables the Jumpscare in "Too Slow",\nslows performance.', //Description
			'Jumpscare', //Save data variable name
			'bool', //Variable type
		    true); //Default value
	    addOption(option);

		var option:Option = new Option('Popups', //Name
		    'If checked, enables Popups in EXE Songs,\nincreases loading times and slows performance.', //Description
		    'Popups', //Save data variable name
		    'bool', //Variable type
		    true); //Default value
	    addOption(option);

		var option:Option = new Option('Sunshine Shaders', 
		    'If checked, there will be sunshine shaders in every song',
			'sonicExeShaders',
			'bool',
			false);
		option.onChange = onChangeShaders;
		addOption(option);

		super();
	}
}