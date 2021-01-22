package com.tracker.TaskTracker.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.tracker.TaskTracker.model.TaskEntry;
import com.tracker.TaskTracker.repository.TaskRepository;
import com.tracker.TaskTracker.service.TaskService;



@RestController
public class TaskController 
{
@Autowired 
TaskService taskservice;

@Autowired
TaskRepository taskrepo;


	@GetMapping("/")
	public ModelAndView taskHome(ModelMap model,HttpServletRequest request)
	
	{
		
		return new ModelAndView("dashboardload");
	}
	
	//---------Task Entry Page--------//
	@GetMapping("taskEntryPage")
    public ModelAndView taskPage(ModelMap model,HttpServletRequest request)
	
	{
		
		return new ModelAndView("taskEntryLoad");
	}
	
	
	//----------Task Entry------------//
	@PostMapping("saveTask")
	public ModelAndView saveTask (ModelMap model,HttpServletRequest req )
	{
		String issue=req.getParameter("issue");
		String developer=req.getParameter("developer");
		String priority=req.getParameter("priority");
		String raisedDate=req.getParameter("raisedDate");
		String completiondate=req.getParameter("compDate");
		
		TaskEntry taskentry =new TaskEntry() ;
		
		taskentry.setIssue(issue);
		taskentry.setDeveloper(developer);
		taskentry.setPriority(priority);
		taskentry.setRaised_Date(raisedDate);
		taskentry.setCompletion_date(completiondate);
		
		taskentry =taskservice.saveTask(taskentry);
		return new ModelAndView("taskEntryLoad");
	}
	
	
   //----------view task list-----------//
	@GetMapping("viewTask")
	
		public  ModelAndView  viewTask (ModelMap model)
		{
		
		List<TaskEntry> tasklist =taskservice.getAllTask();
		model.put("tasklist", tasklist);
		
		
		
		return new ModelAndView ("taskViewLoad");
		}
	
	
	
	//--------Delete Task --------------//
	    @PostMapping("deleteTask")
	
	    public ModelAndView deleteTask(ModelMap model, @RequestParam(required=true) int taskid){
		
	    	System.out.println("Delete Data");
		TaskEntry taskentry=taskservice.deleteTask(taskid);
		
		
		return new ModelAndView("taskViewLoad");
		
		
		
		
		
		
	}
	
	
	
	
}
