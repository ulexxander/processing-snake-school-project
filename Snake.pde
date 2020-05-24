Game game;

void setup() {
    size(640, 480);
    background(100, 100, 100);
    game = new Game();
}

void draw() {
    
    game.update();
    game.render();
}
 
