package main;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.xml.bind.DatatypeConverter;

import sun.misc.BASE64Encoder;

public class AuthCode {
	
	 public static String generateCode()  {
		 try {
	        KeyGenerator keyGen = KeyGenerator.getInstance("AES");
	        keyGen.init(128);
	        SecretKey secretKey = keyGen.generateKey();
	        byte[] encoded = secretKey.getEncoded();
	        return DatatypeConverter.printHexBinary(encoded).toLowerCase();
		 } catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
	    }
  
  public static void main(String ar[])
  {
     // AuthCode ac=new AuthCode();
      //String cd =ac.generateCode();
      
  }
  public static String getHashCode(String key) {
	  try {
		MessageDigest md5 = MessageDigest.getInstance("MD5");
		md5.update(key.getBytes(), 0, key.getBytes().length);
		// String encrptedpass = new BigInteger(1,md5.digest()).toString(16);
		byte[] digestBytes = md5.digest();
		String hashValue = new BASE64Encoder().encode(digestBytes);
		/*
		 for (int i = 0; i < digestBytes.length; i++)
		 {
		    //Convert it to positive integer and then to Hex String

		  hex = Integer.toHexString(0xFF & digestBytes[i]);
		      }
		 */
		System.out.println("Signature: " + hashValue);
		return hashValue;
	  } catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	  }

//response.sendRenderParameter("Password", pw);
}
    

