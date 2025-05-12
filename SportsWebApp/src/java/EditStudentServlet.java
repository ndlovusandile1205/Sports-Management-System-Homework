/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.StudentFacadeLocal;
import za.ac.tut.entities.Student;

/**
 *
 * @author PHATHUTSHED20
 */
public class EditStudentServlet extends HttpServlet {

    @EJB
    private StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
          Long id=Long.parseLong(request.getParameter("id"));
          String sport = request.getParameter("sport");
          
        Student student = sfl.find(id);
        student.setSport(sport);
        
        
        RequestDispatcher rd=request.getRequestDispatcher("edit_manager_outcome.jsp");
        rd.forward(request, response);
    }
    
    

}
