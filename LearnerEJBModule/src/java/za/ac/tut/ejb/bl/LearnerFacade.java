/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.entities.Learner;

/**
 *
 * @author untsa
 */
@Stateless
public class LearnerFacade extends AbstractFacade<Learner> implements LearnerFacadeLocal {

    @PersistenceContext(unitName = "LearnerEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LearnerFacade() {
        super(Learner.class);
    }
    @RolesAllowed("teacher")
    @Override
    public void createLearner(Learner learner) {
        create(learner);
    }
@RolesAllowed("student")
    @Override
    public List<Learner> findAllLearners() {
        
        List<Learner> learners = findAll();
        return learners;
    }
    
}
