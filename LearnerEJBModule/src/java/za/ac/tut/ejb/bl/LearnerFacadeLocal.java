/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Learner;

/**
 *
 * @author untsa
 */
@Local
public interface LearnerFacadeLocal {

    void createLearner(Learner learner);

    void edit(Learner learner);

    void remove(Learner learner);

    Learner find(Object id);

    List<Learner> findAllLearners();

    List<Learner> findRange(int[] range);

    int count();
    
}
