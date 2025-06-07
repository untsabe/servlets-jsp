/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.el;

import javax.ejb.Local;

/**
 *
 * @author untsa
 */
@Local
public interface CaesarEncryptionTechniqueSBLocal {
    
    char [] data = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
     int CAESER_OFFSET = 3;
     int MAX_VALUE =26;

    String encrypt(String msg);
}
