public class BodyPart extends Drawable {
    public BodyPart(int x, int y) {
        tileColor = new Color(0, 255, 0);
        tileX = x;
        tileY = y;
    }

    public void moveRelative(Direction direction) {
        switch(direction) {
            case UP: {
                tileY -= 1;
                break;
            }
            case DOWN: {
                tileY += 1;
                break;
            }
            case RIGHT: {
                tileX += 1;
                break;
            }
            case LEFT: {
                tileX -= 1;
                break;
            }
        }
    }
}