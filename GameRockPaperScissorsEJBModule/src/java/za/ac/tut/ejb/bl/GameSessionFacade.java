/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import java.util.Random;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.GameSession;

/**
 *
 * @author untsa
 */
@Stateless
public class GameSessionFacade extends AbstractFacade<GameSession> implements GameSessionFacadeLocal {

    @PersistenceContext(unitName = "GameRockPaperScissorsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public GameSessionFacade() {
        super(GameSession.class);
    }

    @Override
    public String SiriSign() {
        String[] siriSign ={"rock","paper","scissors"};
        Random rand = new Random();
        Integer index = rand.nextInt(siriSign.length);
        return siriSign[index];
    }

    @Override
    public String generateOutCome(String playerSign, String siriSign) {
        
        String outcome;
        
        if(playerSign.equalsIgnoreCase(siriSign))
        {
             outcome = "tie";
        }else if(playerSign.equalsIgnoreCase("rock") && siriSign.equalsIgnoreCase("scissor"))
        {
            outcome = "playerwon";
        }else if(playerSign.equalsIgnoreCase("paper") && siriSign.equalsIgnoreCase("rock"))
        {
            outcome = "playerwon";
        }else if(playerSign.equalsIgnoreCase("scissor") && siriSign.equalsIgnoreCase("paper")){
            outcome ="playerwon";
        }else{
             outcome="siriwon";
        }
        return outcome;
    }

    @Override
    public List<GameSession> gameStats(String playerId) {
        
        String queryStr = "SELECT g FROM GameSession g WHERE g.playerId =?1";
        Query query = em.createQuery(queryStr);
        query.setParameter(1, playerId);
        List<GameSession> gameStats = query.getResultList();
        return gameStats;
    }

    @Override
    public List<String> viewWinnersAgainstSiri() {
        
        String queryStr = "SELECT(g.name) FROM GameSession g WHERE g.gamesWonPlayer >0";
        Query query = em.createQuery(queryStr);
        List<String>winner = query.getResultList();
        return winner;
    }
    
}
