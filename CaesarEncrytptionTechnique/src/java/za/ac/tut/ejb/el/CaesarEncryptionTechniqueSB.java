/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.ejb.el;

import javax.ejb.Stateless;

/**
 *
 * @author untsa
 */
@Stateless
public class CaesarEncryptionTechniqueSB implements CaesarEncryptionTechniqueSBLocal {

    @Override
    public String encrypt( String msg) {
        String data,cipherText;
        
        data = msg.toLowerCase();
        cipherText = encryptData(data);
       return cipherText;
    }

    private String encryptData(String data) {
       
        String cipherText="";
        char charAtIndex;
        int index;
        
        for (int i = 0; i < data.length(); i++) {
            
            charAtIndex = data.charAt(i);
            
            if(Character.isLetter(charAtIndex))
            {
               char encrypt = (char)(charAtIndex + CAESER_OFFSET);
               
               cipherText += encrypt;
            }
            
        }
        return cipherText;
    }

    
}
