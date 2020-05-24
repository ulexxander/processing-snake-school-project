import java.util.*;

public class Render {
    private List<Drawable> toDraw = new LinkedList();

    public void render() {
        System.out.println("Elements to draw: " + toDraw.size() + "\n");
        for(Drawable drawable : toDraw) {
            
            drawable.draw();
        }
    }

    public void addDrawable(Drawable toAdd) {
        toDraw.add(toAdd);
    }
}