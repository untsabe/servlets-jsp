package za.az.tut.web;

import java.io.IOException;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.az.tut.ejb.bl.AccountHolderFacadeLocal;
import za.az.tut.model.entity.AccountHolder;

public class AddAccountHolderServlet extends HttpServlet {
    @EJB AccountHolderFacadeLocal afl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String fullName = request.getParameter("fullName");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String code = request.getParameter("code");
        String cellNo = request.getParameter("cellNo");
        String email = request.getParameter("email");
        
        AccountHolder holder = createAccountHolder(id,fullName,street,city,code,cellNo,email);
        
        afl.create(holder);
        
    }

    private AccountHolder createAccountHolder(Long id, String fullName, String street, String city, String code, String cellNo, String email) {
     
        AccountHolder holder = new AccountHolder();
        holder.setId(id);
        holder.setFullName(fullName);
        holder.setStreet(street);
        holder.setCity(city);
        holder.setCode(code);
        holder.setCellnumber(cellNo);
        holder.setEmail(email);
        holder.setCreationTime(new Date());
        return holder;
    }
    
    

}
