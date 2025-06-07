/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;

/**
 *
 * @author untsa
 */
@Entity
public class GameSession implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String uniqueId;
    private String name;
    private Integer numGamesPlayed;
    private Integer gamesWonSiri;
    private Integer gamesWonPlayer;
    private Integer numtie;
    private List<String> siriSigns;
    private List<String> playerSigns;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date creationDate;

    public GameSession() {
    }

    public GameSession(Long id, String uniqueId, String name, Integer numGamesPlayed, Integer gamesWonSiri, Integer gamesWonPlayer, Integer numtie, List<String> siriSign, List<String> playerSign, Date creationDate) {
        this.id = id;
        this.uniqueId = uniqueId;
        this.name = name;
        this.numGamesPlayed = numGamesPlayed;
        this.gamesWonSiri = gamesWonSiri;
        this.gamesWonPlayer = gamesWonPlayer;
        this.numtie = numtie;
        this.siriSigns = siriSigns;
        this.playerSigns = playerSigns;
        this.creationDate = creationDate;
    }

    public String getUniqueId() {
        return uniqueId;
    }

    public void setUniqueId(String uniqueId) {
        this.uniqueId = uniqueId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getNumGamesPlayed() {
        return numGamesPlayed;
    }

    public void setNumGamesPlayed(Integer numGamesPlayed) {
        this.numGamesPlayed = numGamesPlayed;
    }

    public Integer getGamesWonSiri() {
        return gamesWonSiri;
    }

    public void setGamesWonSiri(Integer gamesWonSiri) {
        this.gamesWonSiri = gamesWonSiri;
    }

    public Integer getGamesWonPlayer() {
        return gamesWonPlayer;
    }

    public void setGamesWonPlayer(Integer gamesWonPlayer) {
        this.gamesWonPlayer = gamesWonPlayer;
    }

    public Integer getNumtie() {
        return numtie;
    }

    public void setNumtie(Integer numtie) {
        this.numtie = numtie;
    }

    public List<String> getSiriSign() {
        return siriSigns;
    }

    public void setSiriSign(List<String> siriSign) {
        this.siriSigns = siriSign;
    }

    public List<String> getPlayerSign() {
        return playerSigns;
    }

    public void setPlayerSign(List<String> playerSign) {
        this.playerSigns = playerSign;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof GameSession)) {
            return false;
        }
        GameSession other = (GameSession) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.entities.Game[ id=" + id + " ]";
    }
    
}
