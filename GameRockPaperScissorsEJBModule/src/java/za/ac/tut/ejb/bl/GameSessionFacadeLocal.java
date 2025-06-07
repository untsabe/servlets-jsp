/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.GameSession;

/**
 *
 * @author untsa
 */
@Local
public interface GameSessionFacadeLocal {

    void create(GameSession gameSession);

    void edit(GameSession gameSession);

    void remove(GameSession gameSession);

    GameSession find(Object id);

    List<GameSession> findAll();

    List<GameSession> findRange(int[] range);

    int count();
    
    String SiriSign();
    String generateOutCome(String playerSign, String siriSign);
    List<GameSession> gameStats(String playerId);
    List<String> viewWinnersAgainstSiri();
    
    
    
}
