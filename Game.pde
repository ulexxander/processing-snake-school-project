public class Game extends Render {
    private static final int tileSize = 20;

    private Player player = new Player();
    private Render render = new Render();

    public Game() {
        System.out.println("Game started!\n");
    }

    public void update() {
        player.checkCollision();
    }

    public void render() {
        render.render();
    }
}