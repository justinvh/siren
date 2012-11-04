package edu.siren.game.characters.tests;

import java.io.IOException;
import java.util.Random;

import org.lwjgl.LWJGLException;
import org.lwjgl.input.Keyboard;
import org.lwjgl.input.Mouse;

import edu.siren.core.World;
import edu.siren.game.characters.Villager;
import edu.siren.renderer.Screen;

public class DumbVillagerTest {
    Screen screen;

    DumbVillagerTest() throws LWJGLException {
        screen = new Screen("Dumb Villager Test", 1280, 1024);
        screen.sync = 60;

        World world = new World(1024, 1024);
        Random random = new Random();

        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++) {
                Villager v = new Villager(
                        "res/tests/scripts/entities/villager-justin.json");
                v.setPosition(random.nextInt(1024), random.nextInt(1024));
                world.addEntity(v);
            }
        }

        Keyboard.create();
        while (screen.isOpened()) {
            float x = Mouse.getX();
            float y = Mouse.getY();

            if (x < 50.0f && x > 0.0f) {
                x = -5f;
            } else if (x > 1100.0f && x < 1280.0f) {
                x = 5f;
            } else {
                x = 0;
            }

            if (y < 50.0f && y > 0.0f) {
                y = -5f;
            } else if (y > 900.0f && y < 1024.0f) {
                y = 5f;
            } else {
                y = 0;
            }

            world.shader.use();
            if (Keyboard.isKeyDown(Keyboard.KEY_Z)) {
                world.camera.zoomIn();
            } else if (Keyboard.isKeyDown(Keyboard.KEY_X)) {
                world.camera.zoomOut();
            }

            screen.clear();
            world.camera.move(x, y);
            world.draw();
            world.shader.release();
            screen.update();
        }
        screen.cleanup();
    }

    public static void main(String[] args) throws LWJGLException, IOException {
        new DumbVillagerTest();
    }
}