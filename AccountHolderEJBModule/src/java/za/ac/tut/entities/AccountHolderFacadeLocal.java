/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author untsa
 */
@Local
public interface AccountHolderFacadeLocal {

    void create(AccountHolder accountHolder);

    void edit(AccountHolder accountHolder);

    void remove(AccountHolder accountHolder);

    AccountHolder find(Object id);

    List<AccountHolder> findAll();

    List<AccountHolder> findRange(int[] range);

    int count();
    
}
