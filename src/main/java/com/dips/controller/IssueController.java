package com.dips.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dips.dao.IssueDao;
import com.dips.model.Issue;

@Controller
public class IssueController {
	

    ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
    Issue issue = (Issue) context.getBean("issue");
    IssueDao issueDao = (IssueDao) context.getBean("issueDao");
    

    @RequestMapping("/reportIssue")
    public String showReportIssueForm() {
        return "reportIssue";
    }

    @RequestMapping(path = "/submitIssue", method = RequestMethod.POST)
    public String submitIssue(HttpServletRequest request) {
        issue.setCitizenContactId(request.getParameter("citizenContactId"));
        issue.setIssueType(request.getParameter("issueType"));
        issue.setLatitude(request.getParameter("latitude"));
        issue.setLongitude(request.getParameter("longitude"));
        issue.setDescription(request.getParameter("description"));
        issue.setDate(request.getParameter("date"));
        issue.setStatus("Pending"); // default status

        issueDao.saveIssue(issue);
        return "reportIssue"; // or a success page if needed
    }
    
    @RequestMapping(value = "/viewIssues", method = RequestMethod.GET)
    public String viewIssues(Model model) {
        List<Issue> issues = issueDao.getAllIssues();
        model.addAttribute("issues", issues);
        return "viewIssues";  // JSP page name
    }
    @PostMapping("/updateStatus")
    public String updateIssueStatus(HttpServletRequest request, RedirectAttributes redirectAttributes) {
//        try {
//            int id = Integer.parseInt(request.getParameter("id"));
//            String status = request.getParameter("status");
//            issueDao.updateStatus(id, status);
//            redirectAttributes.addFlashAttribute("message", "Issue status updated successfully.");
//        } catch (Exception e) {
//            redirectAttributes.addFlashAttribute("error", "Failed to update status.");
//        }
        return "redirect:/viewIssues";
    }
    
    
    
    @RequestMapping("/viewMyIssues")
    public String viewMyIssues(HttpServletRequest request, Model model) {
        //Integer contactId = (Integer) request.getSession().getAttribute("citizenContactId");
        String contactId = getsetId.getCitizenContactId();
        IssueDao issueDao = context.getBean("issueDao", IssueDao.class);
        List<Issue> issues = issueDao.getIssuesByCitizenContactId(contactId);

        model.addAttribute("issues", issues);
        return "viewMyIssues"; // Name of JSP page
    }


    
    
    
    



}
