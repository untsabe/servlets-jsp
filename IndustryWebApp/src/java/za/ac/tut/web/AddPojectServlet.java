/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.ProjectFacadeLocal;
import za.ac.tut.entities.Project;

/**
 *
 * @author untsa
 */
public class AddPojectServlet extends HttpServlet {
    
    @EJB 
    private ProjectFacadeLocal pfl;
  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String compName = request.getParameter("compName");
        String title1 = request.getParameter("title1");
        String description1 = request.getParameter("description1");
        
        String title2 = request.getParameter("title2");
        String description2 = request.getParameter("description2");
        
        String title3 = request.getParameter("title3");
        String description3 =  request.getParameter("description3");
        
        Project project1 = createProject1(compName,title1,description1);
        Project project2 = createProject1(compName,title2,description2);
        Project project3 = createProject1(compName,title3,description3);
        
        pfl.create(project1);
        pfl.create(project2);
        pfl.create(project3);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_project_outcome.jsp");
        disp.forward(request, response);
        
    }

    private Project createProject1(String compName, String title1, String description1) {
        
        Project project1 = new Project();
        project1.setCompName(compName);
        project1.setTitle(title1);
        project1.setDescription(description1);
        
       return project1;
    }

  

   
}
