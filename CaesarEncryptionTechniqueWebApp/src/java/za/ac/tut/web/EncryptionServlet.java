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
import za.ac.tut.ejb.el.CaesarEncryptionTechniqueSBLocal;

/**
 *
 * @author untsa
 */
public class EncryptionServlet extends HttpServlet {
    
    @EJB CaesarEncryptionTechniqueSBLocal ctl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
            String message = request.getParameter("message");
            
            String cipherText = ctl.encrypt(message);
            
            request.setAttribute("message", message);
            request.setAttribute("cipherText", cipherText);
            
            RequestDispatcher disp = request.getRequestDispatcher("outcome.jsp");
            disp.forward(request, response);
    }


}
