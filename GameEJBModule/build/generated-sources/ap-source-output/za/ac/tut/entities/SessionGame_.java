package za.ac.tut.entities;

import java.util.Date;
import java.util.List;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-26T11:47:05")
@StaticMetamodel(SessionGame.class)
public class SessionGame_ { 

    public static volatile SingularAttribute<SessionGame, Integer> numGamesPlayed;
    public static volatile SingularAttribute<SessionGame, Integer> numtie;
    public static volatile SingularAttribute<SessionGame, List> playerSigns;
    public static volatile SingularAttribute<SessionGame, Integer> gamesWonPlayer;
    public static volatile SingularAttribute<SessionGame, List> siriSigns;
    public static volatile SingularAttribute<SessionGame, String> name;
    public static volatile SingularAttribute<SessionGame, Integer> gamesWonSiri;
    public static volatile SingularAttribute<SessionGame, Long> id;
    public static volatile SingularAttribute<SessionGame, Date> creationDate;
    public static volatile SingularAttribute<SessionGame, String> uniqueId;

}