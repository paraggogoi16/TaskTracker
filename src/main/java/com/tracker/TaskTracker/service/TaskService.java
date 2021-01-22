package com.tracker.TaskTracker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tracker.TaskTracker.model.TaskEntry;
import com.tracker.TaskTracker.repository.TaskRepository;

@Service
public class TaskService 
{
   @Autowired 
   TaskRepository taskrepo;
   
   
   public List<TaskEntry> getAllTask()
   {
	   List <TaskEntry> task =taskrepo.findAll();
	return task;
	   
   }
   
   public TaskEntry saveTask(TaskEntry taskentry)
   {
	 taskentry=  taskrepo.save(taskentry);
	 return taskentry;
	   
   }
   
   public TaskEntry deleteTask(int id)
   {
	   taskrepo.deleteById(id);
	return null;
   }
   
     
   
   
   
}
