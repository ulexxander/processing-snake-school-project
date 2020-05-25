public class Controller {
    private Player player;

    public Controller(Player playerRef) {
        player = playerRef;
    }

    public void pressKey(int currentKey) {        
        switch(currentKey) {
            case 'W': 
            case 'w': {
                player.direction = Direction.UP;
                break;
            }
            case 'S': 
            case 's': {
                player.direction = Direction.DOWN;
                break;
            }
            case 'D': 
            case 'd': {
                player.direction = Direction.RIGHT;
                break;
            }
            case 'A': 
            case 'a': {
                player.direction = Direction.LEFT;
                break;
            }
        }
        // System.out.println(player.direction);
    }
}