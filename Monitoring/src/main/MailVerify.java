/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

/**
 *
 * @author Surbhi
 */

import javax.mail.*;
import javax.mail.internet.*;

import java.security.NoSuchAlgorithmException;
import java.util.*;

public class MailVerify {
public static void main(String[] args) throws Exception {
	
	System.out.println(AuthCode.generateCode());
	SuperMail.setUserName("vyom.jhs@gmail.com");
	SuperMail.setPassword("preamkumar.jj.vyom.jhs828");
	SuperMail.sendMail("kushwaha.vyom.828@gmail", "test", "testbody");
}
}