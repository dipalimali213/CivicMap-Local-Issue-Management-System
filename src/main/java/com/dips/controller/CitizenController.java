package com.dips.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dips.dao.CitizenDao;
import com.dips.model.Citizen;

@Controller
public class CitizenController {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
    CitizenDao citizenDao = (CitizenDao) context.getBean("citizenDao");
    Citizen citizen = (Citizen) context.getBean("citizen");

    @RequestMapping("/citizenRegister")
    public String openRegisterForm() {
        return "citizenRegister";  
    }

    @RequestMapping(path ="/CitizenRegisterSubmit", method = RequestMethod.POST)
    public String submitRegistration(HttpServletRequest request) {
        
    	String contact = request.getParameter("contact");
    	citizen.setContact(contact);
    	getsetId.setCitizenContactId(contact);
        citizen.setName(request.getParameter("name"));
        citizen.setAddress(request.getParameter("address"));
        citizen.setEmail(request.getParameter("email"));
        citizen.setPassword(request.getParameter("password"));

        citizenDao.addCitizen(citizen);
        return "citizenRegister";  
    }
    
    
   

    // 📌 Show Citizen Login Page
    @RequestMapping("/citizenLogin")
    public String showCitizenLoginPage() {
        return "citizenlogin"; // JSP: citizenlogin.jsp
    }

    // 📌 Handle Citizen Login Submission
    @RequestMapping(value = "/CitizenLoginSubmit", method = RequestMethod.POST)
    public String citizenLogin(HttpServletRequest request, HttpSession session, Model model) {
        String contact = request.getParameter("contact");
        String password = request.getParameter("password");

        Citizen citizen = citizenDao.getCitizenByContact(contact);

        if (citizen != null && citizen.getPassword().equals(password)) {
            session.setAttribute("citizen", citizen);
            return "citizenDashboard"; // Successful login
        } else {
            model.addAttribute("error", "Invalid contact or password");
            return "citizenlogin"; // Reload login page with error
        }
    }

}
