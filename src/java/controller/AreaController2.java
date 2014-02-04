
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AreaCalculator;

/**
 *
 * @author J-Tron
 */
@WebServlet(name = "AreaController2", urlPatterns = {"/calculateArea2"})
public class AreaController2 extends HttpServlet {
    private static final String RESULT_PAGE = "AreaResult2.jsp";

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        response.setContentType("text/html");
        
        String length = request.getParameter("length");
       
        double lengthAsDouble = Double.parseDouble(length);
        
        String width = request.getParameter("width");
        
        double widthAsDouble = Double.parseDouble(width);
        
        String radius = request.getParameter("radius");
        
        double radiusAsDouble = Double.parseDouble(radius);
        
        String sideOne = request.getParameter("sideOne");
        
        double sideOneAsDouble = Double.parseDouble(sideOne);
        
        String sideTwo = request.getParameter("sideTwo");
        
        double sideTwoAsDouble = Double.parseDouble(sideTwo);
        
        AreaCalculator areaCalc = new AreaCalculator();
        
        double areaOfRectangle = areaCalc.getAreaOfRectangle(lengthAsDouble, widthAsDouble);
        
        request.setAttribute("areaOfRectangle", areaOfRectangle);
        request.setAttribute("length", lengthAsDouble);
        request.setAttribute("width", widthAsDouble);
        
        double areaOfCircle = areaCalc.getAreaOfCircle(radiusAsDouble);
        request.setAttribute("areaOfCircle", areaOfCircle);
        request.setAttribute("radius", radiusAsDouble);
        
        double thirdSideOfTriangle = areaCalc.getThirdTriangleSideLength(sideOneAsDouble, sideTwoAsDouble);
        request.setAttribute("thirdSideOfTriangle", thirdSideOfTriangle);
        request.setAttribute("sideOne", sideOneAsDouble);
        request.setAttribute("sideTwo", sideTwoAsDouble);
        
        RequestDispatcher view =
                request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
