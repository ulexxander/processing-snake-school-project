import java.util.*;

public class Render {
    private LinkedList<Drawable> toDraw = new LinkedList();
    private int toRemoveIndex = -1;

    public void render() {
        ListIterator<Drawable> iterator = toDraw.listIterator();
        while(iterator.hasNext()) {
            Drawable current = iterator.next();
            current.draw();
            if(toRemoveIndex != -1) {
                toDraw.remove(toRemoveIndex);
                toRemoveIndex = -1;
                return;
            }
        }
    }

    public void addDrawable(Drawable toAdd) {
        toDraw.add(toAdd);
    }

    public void removeDrawable(int index) {
        toRemoveIndex = index;
    }
}