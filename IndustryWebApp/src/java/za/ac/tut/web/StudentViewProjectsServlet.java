/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.ProjectFacadeLocal;
import za.ac.tut.entities.Project;

/**
 *
 * @author untsa
 */
public class StudentViewProjectsServlet extends HttpServlet {
    @EJB 
    private ProjectFacadeLocal pfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<Project> projects  = pfl.findAll();
        request.setAttribute("projects", projects);
        Integer countViewed = (Integer) session.getAttribute("studentviewedCount");
        if(countViewed!=null){
            countViewed++;
        }
        session.setAttribute("countViewed", countViewed);
        Integer totalCompanies =pfl.totalNumberCompanies();
        request.setAttribute("totalCompanies", totalCompanies);
        Integer totalProjects = pfl.totalProjects();
        request.setAttribute("totalProjects", totalProjects);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_outcome.jsp");
        disp.forward(request, response);
        
    }

    

}
