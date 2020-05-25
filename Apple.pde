public class Apple extends Drawable {

    public Apple() {
        tileColor = new Color(255, 0, 0);
        tileX = (int)random(Game.hTiles);
        tileY = (int)random(Game.vTiles);
    }

    public Apple(int x, int y) {
        tileX = x;
        tileY = y;
    }
}