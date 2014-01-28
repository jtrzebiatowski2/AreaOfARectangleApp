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
@WebServlet(name = "AreaController", urlPatterns = {"/calculateArea"})
public class AreaController extends HttpServlet {
     private static final String RESULT_PAGE = "AreaResult.jsp";


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
        
        AreaCalculator areaCalc = new AreaCalculator();
        
        double area = areaCalc.getArea(lengthAsDouble, widthAsDouble);
        
        request.setAttribute("area", area);
        request.setAttribute("length", lengthAsDouble);
        request.setAttribute("width", widthAsDouble);
        
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
