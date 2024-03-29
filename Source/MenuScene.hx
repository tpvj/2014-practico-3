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
class MenuScene extends Scene {

	var jugar:Boton;
	var ayuda:Boton;

	public function new(){
		super();
		jugar=new Boton(0xFF0000,play);
		ayuda=new Boton(0x00FF00,help);
		this.addChild(jugar);
		this.addChild(ayuda);

		jugar.x=300;
		jugar.y=200;

		ayuda.x=300;
		ayuda.y=400;
	}

	public function play(_){
		HelloShooter.getInstance().setScene('game');
	}

	public function help(_){
		HelloShooter.getInstance().setScene('help');
	}

	override public function show(){
		jugar.scaleX=jugar.scaleY=20;
		jugar.alpha=0;
		motion.Actuate.tween(jugar,0.2,{scaleX:1,scaleY:1,alpha:1});

		ayuda.rotation=2000;
		ayuda.alpha=0;
		motion.Actuate.tween(ayuda,3,{rotation:0,alpha:1}).delay(0.3);

	}

}