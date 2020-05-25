public abstract class Drawable {
    protected Color tileColor;

    protected int tileX;
    protected int tileY;

    public void draw() {
        int[] colors = tileColor.getColorRGB();
        fill(colors[0], colors[1], colors[2]);
        rect(
            Game.tileSize * tileX, Game.tileSize * tileY, 
            Game.tileSize, Game.tileSize
        );
    }

    public Color getTileColor() {
        return tileColor;
    }
}