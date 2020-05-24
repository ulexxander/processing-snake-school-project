Game game;

void setup() {
    size(600, 450);
    background(0, 0, 0);
    game = new Game();
}

void draw() {
    if(frameCount % 30 == 0) {
        game.update();
    }
    game.render();
}

void keyPressed() {
    game.controller.pressKey(key);
}

void keyReleased() {
    game.controller.releaseKey();
}