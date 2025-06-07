/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.AccountHolderFacadeLocal;
import za.ac.tut.entities.AccountHolder;
import za.ac.tut.entities.Address;
import za.ac.tut.entities.Contact;


/**
 *
 * @author untsa
 */
public class AddHolderServlet extends HttpServlet {

   @EJB
   private AccountHolderFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String street = request.getParameter("street");
        String city =request.getParameter("city");
        String code = request.getParameter("code");
        String contacts1 = request.getParameter("contacts1");
        String contacts2 = request.getParameter("contacts2");
        
     AccountHolder hlder = createAccHolder(id,name,street,city,code,contacts1,contacts2);
     
        
        RequestDispatcher disp = request.getRequestDispatcher("add_acc_holder_outcome.jsp");
        disp.forward(request, response);
    }

    private AccountHolder createAccHolder(Long id, String name, String street, String city, String code, String contacts1, String contacts2) {
        
        AccountHolder hd = new AccountHolder();
        Address add = new Address();
        Contact con1 = new Contact();
        Contact cnt2 = new Contact();
        con1.setContactValue(contacts1);
        cnt2.setContactValue(contacts2);
        List<Contact> conts = new ArrayList<>();
        conts.add(con1);
        conts.add(cnt2);
        add.setStreet(street);
        add.setCity(city);
        add.setCode(code);
        hd.setId(id);
        hd.setContacts(conts);
        hd.setName(name);
        hd.setAddress(add);
        hd.setCreationDate(new Date());
        
        return hd;
    }


    

}
