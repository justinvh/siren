package edu.siren.game.characters;

import edu.siren.game.Actor;
import edu.siren.game.ai.RandomWalker;

public class Villager extends Actor {
    public Villager(String villerConfig) {
        super(villerConfig, new RandomWalker());
    }
}
