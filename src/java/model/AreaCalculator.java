package model;

/**
 *
 * @author J-Tron
 */
public class AreaCalculator {
    
    private double length;
    private double width;
    private double rectangleArea;
    private double circleArea;
    private double radius;
    private double triangleSideOne;
    private double triangleSideTwo;
    private double triangleSideThree;
          
    
    public double getAreaOfRectangle(double length, double width){
        rectangleArea = length * width;
    
        return rectangleArea;
    }
    
    public double getAreaOfCircle(double radius){
        
        circleArea = 3.14159265 * (radius * radius);
        
        return circleArea;
    }
    
    public double getThirdTriangleSideLength(double triangleSideOne, double triangleSideTwo ){
        double sideOne = Math.pow(triangleSideOne, 2.0);
        double sideTwo = Math.pow(triangleSideTwo, 2.0);
        
        triangleSideThree = (Math.pow((sideOne + sideTwo), .5));
                
        return triangleSideThree;
    }

    public double getLength() {
        return length;
    }

    public double getWidth() {
        return width;
    }

    public void setLength(double length) {
        this.length = length;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getCircleArea() {
        return circleArea;
    }

    public double getRadius() {
        return radius;
    }

    public double getRectangleArea() {
        return rectangleArea;
    }

    public double getTriangleSideOne() {
        return triangleSideOne;
    }

    public double getTriangleSideThree() {
        return triangleSideThree;
    }

    public double getTriangleSideTwo() {
        return triangleSideTwo;
    }

    public void setCircleArea(double circleArea) {
        this.circleArea = circleArea;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public void setRectangleArea(double rectangleArea) {
        this.rectangleArea = rectangleArea;
    }

    public void setTriangleSideOne(double triangleSideOne) {
        this.triangleSideOne = triangleSideOne;
    }

    public void setTriangleSideThree(double triangleSideThree) {
        this.triangleSideThree = triangleSideThree;
    }

    public void setTriangleSideTwo(double triangleSideTwo) {
        this.triangleSideTwo = triangleSideTwo;
    }
    
    
    
}
