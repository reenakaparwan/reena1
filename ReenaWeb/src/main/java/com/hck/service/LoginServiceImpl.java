package com.hck.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import com.hck.model.Developermaster;
import com.hck.model.User;

public class LoginServiceImpl {

	// Injected database connection:
    @PersistenceContext private EntityManager em;
 
  
  
    public User findByUsername(final long id) {
        return (User) this.em.find(User.class, (Long)id);
    }

}
