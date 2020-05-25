// gotta use mine implementation instead of processing's 'color' class
// because this 'color' literally doesn't work, no idea why

public class Color {
    private int colorValue;
    private int red;
    private int green;
    private int blue;

    public Color(int val) {
        setColor(val);
    }

    public Color(int r, int g, int b) {
        setColorRGB(r, g, b);
    }

    public int getColor() {
        return colorValue;
    }

    public int[] getColorRGB() {
        int[] toReturn = new int[3];
        toReturn[0] = red;
        toReturn[1] = green;
        toReturn[2] = blue;
        return toReturn;
    }

    public int[] getColorRGB_test() {
        int[] toReturn = new int[3];
        toReturn[0] = red;
        toReturn[1] = green;
        toReturn[2] = blue;
        System.out.println(toReturn[0]);
        System.out.println(toReturn[1]);
        System.out.println(toReturn[2]);
        return toReturn;
    }

    public void setColor(int val) {
        colorValue = val;
        red = val & 0xFF0000;
        blue = val & 0x00FF00;
        blue = val & 0x0000FF;
    }

    public void setColorRGB(int r, int g, int b) {
        red = r;
        green = g;
        blue = b;
        colorValue = r * 0x10000 | g * 0x100 | b;
    }
}