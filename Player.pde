enum Direction {
    UP, DOWN, RIGHT, LEFT
}

public class Player {
    private ArrayList<BodyPart> bodyParts = new ArrayList<BodyPart>();
    private BodyPart head;

    private Direction direction;

    public Player() {
        bodyParts.add(new BodyPart(Game.hTiles / 2, Game.vTiles / 2));
        head = bodyParts.get(0);
        //dummy
        direction = Direction.DOWN;
    }

    public BodyPart addBodyPart() {
        BodyPart last = bodyParts.get(bodyParts.size() - 1);
        int newTileX = 0;
        int newTileY = 0;

        switch(direction) {
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
        }

        bodyParts.add(new BodyPart(newTileX, newTileY));
        return bodyParts.get(bodyParts.size() - 1);
    }
}