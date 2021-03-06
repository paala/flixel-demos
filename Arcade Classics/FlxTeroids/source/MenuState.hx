package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

/**
 * ...
 * @author Zaphod
 */
class MenuState extends FlxState
{
	override public function create():Void 
	{
		var t:FlxText;
		t = new FlxText(0, FlxG.height / 2 - 20, FlxG.width, "FlxTeroids");
		t.setFormat(null, 32, FlxColor.WHITE, "center", FlxColor.GRAY, true);
		add(t);
		
		t = new FlxText(0, FlxG.height - 30, FlxG.width, "click to play");
		t.setFormat(null, 16, FlxColor.WHITE, "center", FlxColor.GRAY, true);
		add(t);
		
		FlxG.mouse.show();
	}
	
	override public function update():Void 
	{
		if (FlxG.mouse.justPressed())
		{
			FlxG.switchState(new PlayState());
		}
	}
}