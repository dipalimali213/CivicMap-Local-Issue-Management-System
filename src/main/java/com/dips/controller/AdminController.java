package com.dips.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dips.dao.AuthorityDao;
import com.dips.dao.CitizenDao;
import com.dips.dao.IssueDao;
import com.dips.model.Authority;
import com.dips.model.Citizen;
import com.dips.model.Issue;

@Controller
public class AdminController {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Authority authority = (Authority) context.getBean("authority");
	AuthorityDao authorityDao = (AuthorityDao) context.getBean("authorityDao");
	
	
	@RequestMapping("/")
	public String openHomePage(){
		System.out.println("Welcome to admin login  page");
		return "index";
	}

    @RequestMapping("/adminLogin")
    public String showLoginPage() {
        return "adminLogin";
    }
    
    @RequestMapping(path="/AdminLoginServlet", method=RequestMethod.POST)
	public String SubmitLogin(HttpServletRequest request)
	{
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if(email.equals("admin@gmail.com")&& password.equals("admin")){
			return "adminDashboard";
		}
		else{
			return "index";
		}
		
	}
    

    
    @RequestMapping("/adminDashboard")
    public String showAdminDashboard() {
        return "adminDashboard"; // this corresponds to /WEB-INF/views/adminDashboard.jsp
    }
    @RequestMapping("/addAuthority")
	public String openAddAthourity()
	{
		return "addAuthority";
	}
	@RequestMapping(path="/AddAuthorityServlet", method=RequestMethod.POST)
	public String submitAddAccount(HttpServletRequest request)
	{
		authority.setContact((request.getParameter("contact")));
		authority.setName(request.getParameter("name"));
		authority.setDepartment(request.getParameter("department"));
		authority.setEmail(request.getParameter("email"));
		authority.setPassword(request.getParameter("password"));
		
		authorityDao.addAuthority(authority);
		return "addAuthority";
		
	} 
	@RequestMapping("/viewAuthorities")
	public String viewAuthority(HttpServletRequest request) {
	    List<Authority> authorities = authorityDao.getAllAuthorities();
	    request.setAttribute("authorities", authorities);
	    return "viewAuthority";
	}
	
	@RequestMapping("/deleteAuthority")
	public String showDeleteAuthorityPage(HttpServletRequest request) {
	    List<Authority> list = authorityDao.getAllAuthorities();
	    request.setAttribute("authorities", list);
	    return "deleteAuthority"; // JSP name
	}

	@RequestMapping("/performDeleteAuthority")
	public String performDeleteAuthority(HttpServletRequest request) {
	    String contact = request.getParameter("contact");
	    authorityDao.deleteAuthority(contact);
	    return "redirect:/deleteAuthority";
	}
	
	
	
	
	@RequestMapping("/viewIssueStatus")
	public String viewIssueStatus(HttpServletRequest request) {
	    IssueDao issueDao = context.getBean("issueDao", IssueDao.class);
	    List<Issue> issues = issueDao.getAllIssues();
	    request.setAttribute("issues", issues);
	    return "viewIssueStatus";
	}

	
	
	
	
	@RequestMapping(value = "/updateIssueStatus", method = RequestMethod.POST)
	public String updateIssueStatus(HttpServletRequest request, RedirectAttributes redirectAttributes) {
	    int id = Integer.parseInt(request.getParameter("id"));
	    String status = request.getParameter("status");

	    IssueDao issueDao = context.getBean("issueDao", IssueDao.class);
	    Issue issue = issueDao.getIssueById(id);
	    if (issue != null) {
	        issue.setStatus(status);
	        issueDao.updateIssue(issue); // Make sure this method is transactional and uses HibernateTemplate
	    }

	    redirectAttributes.addFlashAttribute("message", "Issue status updated successfully.");
	    return "redirect:viewIssues";
	}
	
	
	
	
	@RequestMapping("/viewCitizens")
	public String viewCitizens(HttpServletRequest request) {
	    CitizenDao citizenDao = context.getBean("citizenDao", CitizenDao.class);
	    List<Citizen> citizens = citizenDao.getAllCitizens();
	    request.setAttribute("citizens", citizens);
	    return "viewCitizen";
	}


	
	
	

	







	




   



}
