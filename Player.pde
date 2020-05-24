public class Player {
    private ArrayList<BodyPart> bodyParts = new ArrayList<BodyPart>();
    private BodyPart head;

    public Player() {
        bodyParts.add(new BodyPart(width / 2, height / 2));
        head = bodyParts.get(0);
    }

    public void drawParts() {

    }

    public void checkCollision() {
        
    }
}