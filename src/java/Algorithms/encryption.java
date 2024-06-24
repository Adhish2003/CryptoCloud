/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Algorithms;

/**
 *
 * @author java4
 */

import java.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;



public class encryption 
{
    public String encrypt(String text, SecretKey secretkey) {
        String plainData = null, cipherText = null;
        try {
            plainData = text;

            Cipher aesCipher = Cipher.getInstance("AES"); // Getting AES instance
            aesCipher.init(Cipher.ENCRYPT_MODE, secretkey); // Initiating ciper encryption using secretkey

            byte[] byteDataToEncrypt = plainData.getBytes();
            byte[] byteCipherText = aesCipher.doFinal(byteDataToEncrypt); // Encrypting data

            // System.out.println("ciper text:"+byteCipherText);

            cipherText = Base64.getEncoder().encodeToString(byteCipherText); // Converting encrypted data to string

            System.out.println("\n Given text : " + plainData + " \n Cipher Data : " + cipherText);

        } catch (Exception e) {
            System.out.println(e);
        }
        return cipherText;
    }
}




