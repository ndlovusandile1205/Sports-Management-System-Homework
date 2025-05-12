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

/**
 *
 * @author Student
 */
public class GetAllServlet extends HttpServlet {
@EJB 
private ManagerFacadeLocal mfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sport=request.getParameter("sport");
        
        Long numberStudnts = mfl.cntAllPlayersPerSport(sport);
        
        request.setAttribute("numberStudnts", numberStudnts);
        
        RequestDispatcher rd=request.getRequestDispatcher("get_all_outcome.jsp");
        rd.forward(request, response);
    }
}
