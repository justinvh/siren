package edu.siren.game;

import java.io.IOException;

import org.lwjgl.LWJGLException;
import org.lwjgl.input.Keyboard;

import edu.siren.core.tile.World;
import edu.siren.game.menu.HelpMenu;
import edu.siren.game.profile.Profile;
import edu.siren.game.status.GameStatus;
import edu.siren.game.worlds.TestBox;
import edu.siren.renderer.Screen;

public class GamePlay {

	// Constants
	private final static int WORLD_SIZE = 1024;
	
	// The Screen for the Game
	private Screen screen;
	
	// Create the World
	private World world;
	
	// The Current Game Profile
	private Profile profile;
	
	// The Current Player of the Game
	private Player player;
	
	// Game Status
	private GameStatus gameStatus;
	
	// Game Menus
	private HelpMenu helpMenu;
	
	public GamePlay(Screen screen, Profile profile) throws IOException, LWJGLException {
		
		// Save the Screen 
		this.screen = screen;
		
		// Save the Profile
		this.profile = profile;
		
		// Create a New World
		world = new TestBox(WORLD_SIZE, WORLD_SIZE);
		
		// Get the Player and add him to the world
		player = this.profile.getPlayer();
        player.setPosition(0, 0);
        player.follow = true;
        world.addEntity(player);		
        
		// Enable the Camera
		world.getCamera().enable();

		// Create Game Stuatus
		gameStatus = new GameStatus(screen);
		
		// Create HelpMenu
		helpMenu = new HelpMenu(screen);
		
	}
	
	
	public void play() {
		
        // The close event can take a bit to propagate
        while (screen.nextFrame()) {     

        	// If the Screen is Closed...
        	if (!screen.isOpened())
        		break;
        	
        	// Handle the Zoom
        	if (Keyboard.isKeyDown(Keyboard.KEY_Z))
        		world.zoomIn();
        	if (Keyboard.isKeyDown(Keyboard.KEY_X)) 
        		world.zoomOut();
        	
        	
        	// Handle the Key Events
        	while(Keyboard.next()) {
        		if (Keyboard.getEventKeyState()) {
		            if (Keyboard.getEventKey() == Keyboard.KEY_1) {
		                world.changeEnvironment(World.Environment.NIGHT, 5000);

		            } else if (Keyboard.getEventKey() == Keyboard.KEY_2) {
		                world.changeEnvironment(World.Environment.MORNING, 5000);

		            } else if (Keyboard.getEventKey() == Keyboard.KEY_3) {
		                world.changeEnvironment(World.Environment.AFTERNOON, 5000);

		            } else if (Keyboard.getEventKey() == Keyboard.KEY_4) {
		                world.changeEnvironment(World.Environment.DUSK, 5000);

		            } else if(Keyboard.getEventKey() == Keyboard.KEY_P) {
		            	world.pause();
		            } else if (Keyboard.getEventKey() == Keyboard.KEY_C) {
		            	world.play();
		            } else if (Keyboard.getEventKey() == Keyboard.KEY_H) {
		            	world.pause();
		            	helpMenu.show();
		            } else if (Keyboard.getEventKey() == Keyboard.KEY_ESCAPE) {
		            	world.play();
		            } else if (Keyboard.getEventKey() == Keyboard.KEY_K ) {
		            	
		            	gameStatus.setHealth(gameStatus.getHealth() - 1);
		            	
		            	
		            } else if (Keyboard.getEventKey() == Keyboard.KEY_L) {
		            	
		            	gameStatus.setHealth(gameStatus.getHealth()+1);
		            }
        		}
        	}
            
            
            // Draw the World
            world.draw();
            
            // Set Time of Date
            gameStatus.setTimeOfDay(world.getCurrentEnvironment().name());
            
            // Update Game Status
            gameStatus.update();
            
        }
        
	}
	
}
