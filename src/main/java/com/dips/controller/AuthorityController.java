package com.dips.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.dips.dao.AuthorityDao;
import com.dips.model.Authority;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuthorityController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
     AuthorityDao authorityDao = context.getBean("authDao",AuthorityDao.class);

    // 📌 Show Authority Login Page
    @RequestMapping("/authorityLogin")
    public String showAuthorityLoginPage() {
        return "authorityLogin"; // JSP: authoritylogin.jsp
    }

    // 📌 Handle Authority Login Submission
    @RequestMapping(value = "/loginAuthority", method = RequestMethod.POST)
    public String authorityLogin(HttpServletRequest request, HttpSession session, Model model) {
        String contact = request.getParameter("contact");
        String password = request.getParameter("password");

        Authority authority = authorityDao.getAuthorityByContact(contact);

        if (authority != null && authority.getPassword().equals(password)) {
            session.setAttribute("authority", authority);
            return "authorityDashboard"; // Successful login redirect
        } else {
            model.addAttribute("error", "Invalid contact or password");
            return "authorityLogin"; // Reload login page with error
        }
    }
    
 
 	
}
