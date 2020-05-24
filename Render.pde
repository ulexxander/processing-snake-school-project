import java.util.*;

public class Render {
    private List<Drawable> toDraw = new LinkedList();

    public void render() {
        for(Drawable drawable : toDraw) {
            drawable.draw();
        }
    }

}