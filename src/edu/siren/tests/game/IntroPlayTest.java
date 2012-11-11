package edu.siren.tests.game;

import java.io.IOException;

import org.lwjgl.LWJGLException;

import edu.siren.core.tile.World;
import edu.siren.game.Player;
import edu.siren.game.gui.Intro;
import edu.siren.game.gui.Title;
import edu.siren.game.worlds.TestBox;
import edu.siren.gui.Gui;
import edu.siren.renderer.Screen;

public class IntroPlayTest {
    public static void main(String[] args) throws LWJGLException, IOException {
        Screen screen = new Screen("Screen", 640, 480);
        World world = new TestBox(1024, 1024);
        
        // Add the player
        Player player = new Player("res/tests/scripts/entities/villager-justin.json");
        player.setPosition(0, 0);
        world.addEntity(player);

        // Disable the camera
        world.camera.disable();

        // Start the intro
        Gui intro = new Intro(screen);
        while (intro.running()) {
            intro.run();
        }
        
        // Start the title
        Gui title = new Title(screen);
        while (title.running()) {
            title.run();
        }
        
        // Enable the camera
        world.camera.enable();
        
        // Start the game, run the world
        while (screen.nextFrame()) {
            world.draw();
        }            
        
        // Cleanup allocations and exit
        screen.cleanup();
    }
}
