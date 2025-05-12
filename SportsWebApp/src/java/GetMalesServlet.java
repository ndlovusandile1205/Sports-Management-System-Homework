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

/**
 *
 * @author PHATHUTSHED20
 */
public class GetMalesServlet extends HttpServlet {
@EJB
private ManagerFacadeLocal mfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sport=request.getParameter("sport");
        
        Long numMales = mfl.cntAllMalePlayersPerSport(sport);
        
        request.setAttribute("numMales", numMales);
        
        RequestDispatcher rd=request.getRequestDispatcher("get_males_outcome.jsp");
        rd.forward(request, response);
    }

}
