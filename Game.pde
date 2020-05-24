public class Game extends Render {
    private static final int width = 640;
    private static final int height = 480;
    
    private static final int tileSize = 20;
    
    private static final int hTiles = width / tileSize;
    private static final int vTiles = height / tileSize;
    
    private Player player = new Player();
    private Render render = new Render();

    public Game() {
        System.out.println("Game started!\n");

        render.addDrawable(player.head);
    }

    public void update() {
        //checkCollision();

        // dummy
        if(frameCount % 60 == 0) {
            render.addDrawable(player.addBodyPart());
        }
    }

    public void render() {
        render.render();
    }

    public void checkCollision() {
        for(Drawable object : render.toDraw) {
            if(player.head.tileX == object.tileX && 
                player.head.tileY == object.tileY) 
            {

            }
        }    
    }
}