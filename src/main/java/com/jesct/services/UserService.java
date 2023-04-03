/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jesct.services;

import com.jesct.entities.Task;
import com.jesct.entities.User;
import jakarta.enterprise.context.RequestScoped;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import java.util.List;

/**
 *
 * @author jesus
 */

@RequestScoped
public class UserService {
    public void create(User oUser){
        EntityManager em = Persistence.createEntityManagerFactory("ToDoListPersistence").createEntityManager();
        em.getTransaction().begin();
        em.persist(oUser);
        em.getTransaction().commit();
        em.close();
    }
    
    public User authenticate(User oUser){
        EntityManager em = Persistence.createEntityManagerFactory("ToDoListPersistence").createEntityManager();
        String hquery = "FROM User u WHERE u.email=:userName and u.password=:userPass";
        
        Query q = em.createQuery(hquery, User.class);
        q.setParameter("userName", oUser.getEmail());
        q.setParameter("userPass", oUser.getPassword());
        
        User res = null;
        try{
            res = (User)q.getSingleResult();
            return res;
        }catch(Exception e){
            return res;
        }
    }
    
    public User find(Long n){
        EntityManager em = Persistence.createEntityManagerFactory("ToDoListPersistence").createEntityManager();
        em.getTransaction().begin();
        
        Long key = n;
        User user = em.find(User.class, key);
        
        em.getTransaction().commit();
        em.close();
        
        return user;
    }
}
