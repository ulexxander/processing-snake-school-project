public class Player {
    private ArrayList<BodyPart> bodyParts = new ArrayList<BodyPart>();
    private BodyPart head;

    public Player() {
        bodyParts.add(new BodyPart(Game.hTiles / 2, Game.vTiles / 2));
        head = bodyParts.get(0);
    }
}