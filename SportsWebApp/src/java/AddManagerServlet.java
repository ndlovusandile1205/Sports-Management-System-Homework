/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
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
public class AddManagerServlet extends HttpServlet {

@EJB
private  ManagerFacadeLocal mfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("id"));
        String name=request.getParameter("name");
        
        Manager man = new Manager(id, name);
        mfl.create(man);
        
        RequestDispatcher rd=request.getRequestDispatcher("add_manager_outcome.jsp");
        rd.forward(request, response);
    }

}
