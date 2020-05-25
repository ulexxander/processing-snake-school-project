public class Game {
    private static final int width = 450;
    private static final int height = 300;
    
    private static final int tileSize = 15;
    
    private static final int hTiles = width / tileSize;
    private static final int vTiles = height / tileSize;

    private Player player = new Player();
    private Render render = new Render();
    public Controller controller = new Controller(player);

    private int applesCount;

    private boolean theEnd;

    public Game() {
        System.out.println("Game started!");
        render.addDrawable(player.head);
    }

    private void gameOver() {
        System.out.println("Game is over!");
        theEnd = true;
    }

    public void update() {
        if(!theEnd) {
            checkCollision();
            if(frameCount % 90 == 0) {
                spawnApple();
            }
            player.moveDirectional();
        }
    }

    public void render() {
        if(!theEnd) {
            render.render();
        }
        else {
            fill(255,255,255);
            textSize(50);
            text("R.I.P.", width / 2 - 50, height / 2);
            textSize(20);
            text("Press F to restart...", width / 2 - 80, height / 2 + 50);
            if(key == 'f' || key == 'F') {
                game = new Game();
            }
        }
    }

    public void spawnApple() {
        if(applesCount > 5) return;
        render.addDrawable(new Apple());
        applesCount++;
    }

    public void checkCollision() {    
        for(ListIterator<Drawable> iterator = render.toDraw.listIterator(); iterator.hasNext();) {
            Drawable current = iterator.next();
            int index = iterator.nextIndex() - 1;

            if(current == player.head) continue;
            
            if(player.head.tileX == current.tileX && 
                player.head.tileY == current.tileY) 
            {
                if(current instanceof Apple) {
                    render.addDrawable(player.addBodyPart());
                    render.removeDrawable(index);
                    applesCount--;
                    return;
                }
                if(current instanceof BodyPart) {
                    gameOver();
                    return;
                }
            } 
            else if(player.head.tileX < 1 || player.head.tileX >= Game.hTiles ||
                player.head.tileY < 1 || player.head.tileY >= Game.vTiles )
            {
                gameOver();
                return;
            }
        }
    }
}