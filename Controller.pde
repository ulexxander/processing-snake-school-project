public class Controller {
    private Player player;
    private int currentKey;
    private boolean pressed;

    public Controller(Player playerRef) {
        player = playerRef;
    }

    protected void pressKey(int key) {
        if(pressed) return;
        currentKey = key;
        pressed = true;
        
        switch(key) {
            case 'w': {
                player.direction = Direction.UP;
                break;
            }
            case 's': {
                player.direction = Direction.DOWN;
                break;
            }
            case 'd': {
                player.direction = Direction.RIGHT;
                break;
            }
            case 'a': {
                player.direction = Direction.LEFT;
                break;
            }
        }
        System.out.println(player.direction);
    }

    protected void releaseKey() {
        currentKey = 0;
        pressed = false;
    }


}