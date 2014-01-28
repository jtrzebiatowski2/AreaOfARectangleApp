package model;

import javax.swing.JOptionPane;

/**
 *
 * @author J-Tron
 */
public class AreaCalculator {
    
    private double length;
    private double width;
    private double area;
    
    public double getArea(double length, double width){
        area = length * width;
    
        return area;
    }

    public double getLength() {
        return length;
    }

    public double getWidth() {
        return width;
    }

    public double getArea() {
        return area;
    }

    public void setLength(double length) {
        this.length = length;
    }

    public void setWidth(double width) {
        this.width = width;
    }
    
    
}
