/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.ManagerFacadeLocal;
import za.ac.tut.entities.Manager;
/**
 *
 * @author PHATHUTSHED20
 */
public class ViewManagersServlet extends HttpServlet {

   @EJB
    private ManagerFacadeLocal mfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        List<Manager> managers = mfl.findAll();
        
        request.setAttribute("managers", managers);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_all_managers_outcome.jsp");
        disp.forward(request, response);
    }
    
    

}
