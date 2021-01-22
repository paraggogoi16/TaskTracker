package com.tracker.TaskTracker.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tracker.TaskTracker.model.TaskEntry;

@Repository
public interface TaskRepository extends  JpaRepository <TaskEntry , Integer>

{
    TaskEntry findById(int id);
    
    TaskEntry findByDeveloper(String developer);
	
	
	
	
}
