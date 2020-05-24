public class Player {
    private ArrayList<BodyPart> bodyParts = new ArrayList<BodyPart>();
    private BodyPart head;

    public Player() {
        bodyParts.add(new BodyPart(Game.hTiles / 2, Game.vTiles / 2));
        head = bodyParts.get(0);
    }

    public BodyPart addBodyPart() {
        int newTileX = bodyParts.get(bodyParts.size() - 1).tileX - 1;
        int newTileY = bodyParts.get(bodyParts.size() - 1).tileY - 1;

        bodyParts.add(new BodyPart(newTileX, newTileY));
        return bodyParts.get(bodyParts.size() - 1);
    }
}