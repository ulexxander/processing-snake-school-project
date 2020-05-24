public abstract class Drawable {
    protected int tileX;
    protected int tileY;

    public void draw() {
        rect(Game.tileSize * tileX, Game.tileSize * tileY, 
            Game.tileSize, Game.tileSize);
    }
}