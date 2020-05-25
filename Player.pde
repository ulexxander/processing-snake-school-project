import java.util.*;

enum Direction {
    UP, DOWN, RIGHT, LEFT, UNSET
}

public class Player {
    private ArrayList<BodyPart> bodyParts = new ArrayList<BodyPart>();
    private LinkedList<Direction> prevDirections = new LinkedList<Direction>();
    private BodyPart head;

    private Direction direction;

    public Player() {
        bodyParts.add(new BodyPart(Game.hTiles / 2, Game.vTiles / 2));
        head = bodyParts.get(0);
        direction = Direction.UNSET;
    }

    private void moveBody() {
        for(int i = 0; i < bodyParts.size(); i++) {
            bodyParts.get(i).moveRelative(prevDirections.get(prevDirections.size() - i - 1));
        }
    }
    
    public void moveDirectional() {
        if(direction == Direction.UNSET) return;
        prevDirections.add(direction);
        moveBody();

        prevDirections.removeFirst();
        System.out.println("Directions: " + prevDirections.size());
    }

    public BodyPart addBodyPart() {
        if(direction == Direction.UNSET) return null;
        BodyPart last = bodyParts.get(bodyParts.size() - 1);
        int newTileX = 0;
        int newTileY = 0;

        Direction newDirect = prevDirections.size() > 0 ? prevDirections.getLast() : direction;

        prevDirections.addFirst(newDirect);

        switch(newDirect) {
            case UP: {
                newTileX = last.tileX;
                newTileY = last.tileY + 1;
                break;
            }
            case DOWN: {
                newTileX = last.tileX;
                newTileY = last.tileY - 1;
                break;
            }
            case RIGHT: {
                newTileX = last.tileX - 1;
                newTileY = last.tileY;
                break;
            }
            case LEFT: {
                newTileX = last.tileX + 1;
                newTileY = last.tileY;
                break;
            }
            case UNSET: {
                return null;
            }
        }

        bodyParts.add(new BodyPart(newTileX, newTileY));
        return bodyParts.get(bodyParts.size() - 1);
    }
}