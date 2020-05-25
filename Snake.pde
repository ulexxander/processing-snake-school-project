Game game;

void setup() {
    size(450, 300);
    background(0, 0, 0);
    game = new Game();

}

void draw() {
    clear();
    // for developing:
    fill(0,0,0);
    stroke(30,30,30);
    for(int x = 0; x < 600; x += 15) {
        for(int y = 0; y < 450; y += 15) {
            rect(x, y, 15, 15);
        }
    }

    noStroke();
    fill(255,255,255);
    if(frameCount % 5 == 0) {
        game.update();
    }
    game.render();
}

void keyPressed() {
    game.controller.pressKey(key);
}