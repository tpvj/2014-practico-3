package;

import flash.display.Sprite;
import flash.Lib;
import flash.display.Bitmap;
import openfl.Assets;
import flash.media.Sound;
import engine.*;
/**
 * ...
 * @author fbricker
 */
class HelloShooter extends engine.SceneManager {

	private static var instance:SceneManager=null;
	public static function getInstance():SceneManager{
		return instance;
	}

	public function new () {
		super();
		instance=this;

		stage.addEventListener(flash.events.Event.ENTER_FRAME,gameLoop);
		InputManager.getInstance().suscribe(stage);

		sceneMap.set('game',new GameScene());
		sceneMap.set('menu',new MenuScene());
		//sceneMap.set('game',new GameScene());

		setScene('menu');
	}

	// Nuestro gameLoop (se ejecuta antes de cada cuadro).
	function gameLoop(e){
		this.updateLogic(1/60);
	}
		
}
