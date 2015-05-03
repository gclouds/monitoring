package main;

import javax.servlet.http.HttpServletRequest;

public class UserBean {

	public String name = null;
	public String email = null;
	public String pwd = null;
        
	public int status = 0;
        public UserBean(HttpServletRequest request) {
		name = request.getParameter("name");
		email = request.getParameter("email");
		pwd = AuthCode.getHashCode(request.getParameter("pwd"));
               
                 status=0;
                
		
	}


}
