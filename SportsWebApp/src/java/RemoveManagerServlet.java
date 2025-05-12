/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
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
public class RemoveManagerServlet extends HttpServlet {

     @EJB
    private ManagerFacadeLocal mfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        
        Manager manager = mfl.find(id);
        mfl.remove(manager);
        
        request.setAttribute("manager", manager);
        
        RequestDispatcher disp = request.getRequestDispatcher("remove_manager_outcome.jsp");
        disp.forward(request, response);
    }
    
    

}
