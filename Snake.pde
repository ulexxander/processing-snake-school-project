Game game;

void setup() {
    size(600, 450);
    background(0, 0, 0);
    game = new Game();
}

void draw() {
    game.update();
    game.render();
}
 
