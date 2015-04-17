/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author vyom
 */
public class LoginGet {
    public String email=null;
    public String  pwd=null;
    public LoginGet(HttpServletRequest request)
    {
        email=request.getParameter("email");
        pwd = AuthCode.getHashCode(request.getParameter("pwd"));
    }
            
}
