/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jesct.services;

import com.jesct.entities.Task;
import com.jesct.entities.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import java.util.List;

/**
 *
 * @author jesus
 */
public class TaskService {
    public void create(Task oTask){
        EntityManager em = Persistence.createEntityManagerFactory("ToDoListPersistence").createEntityManager();
        em.getTransaction().begin();
        em.persist(oTask);
        em.getTransaction().commit();
        em.close();
    }
    
    public List<Task> list(){
        EntityManager em = Persistence.createEntityManagerFactory("ToDoListPersistence").createEntityManager();
        String hquery = "from Task";
        Query q = em.createQuery(hquery, Task.class);
        
        return q.getResultList();
    }
    
    public void update(Task oTask){
        EntityManager em = Persistence.createEntityManagerFactory("ToDoListPersistence").createEntityManager();
        em.getTransaction().begin();
        
        Long key = oTask.getId();
        Task nTask = em.find(Task.class, key);
        nTask.setName(oTask.getName());
        nTask.setFinished(oTask.getFinished());
        em.getTransaction().commit();
        em.close();
    }
    
    public Task find(Long n){
        EntityManager em = Persistence.createEntityManagerFactory("ToDoListPersistence").createEntityManager();
        em.getTransaction().begin();
        
        Long key = n;
        Task task = em.find(Task.class, key);
        
        em.getTransaction().commit();
        em.close();
        
        return task;
    }
    
    public void delete(Long n){
        EntityManager em = Persistence.createEntityManagerFactory("ToDoListPersistence").createEntityManager();
        em.getTransaction().begin();
        
        Long key = n;
        Task task = em.find(Task.class, key);
        em.remove(task);
        em.getTransaction().commit();
        em.close();
    }
}
