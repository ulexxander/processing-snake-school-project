public class Controller {
    private Player player;

    public Controller(Player playerRef) {
        player = playerRef;
    }

    public void pressKey(int currentKey) {        
        switch(currentKey) {
            case 'W': 
            case 'w': {
                if(player.direction == Direction.DOWN) return;
                player.direction = Direction.UP;
                break;
            }
            case 'S': 
            case 's': {
                if(player.direction == Direction.UP) return;
                player.direction = Direction.DOWN;
                break;
            }
            case 'D': 
            case 'd': {
                if(player.direction == Direction.LEFT) return;
                player.direction = Direction.RIGHT;
                break;
            }
            case 'A': 
            case 'a': {
                if(player.direction == Direction.RIGHT) return;
                player.direction = Direction.LEFT;
                break;
            }
        }
        // System.out.println(player.direction);
    }
}