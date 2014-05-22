package com.demo.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.demo.entity.DBObject;

@Repository
@Transactional(value="transactionManager", noRollbackFor={NoResultException.class})
public class CommonDao {
	
	  @PersistenceContext(unitName="entityManagerFactory")
	  private EntityManager entityManager;

	  protected EntityManager getEntityManager() {
	    return entityManager;
	  }
	  
	  /**
	   * 
	   * @param data
	   * @return
	   */
	  public Long saveDBOject(DBObject data) {
	      if (data.getId() == null) {
	    	  getEntityManager().persist(data);
	      } else {
	    	  getEntityManager().merge(data);
	      }
	      return data.getId();   
	  }
	  
	  /**
	   * 
	   * @param entity
	   */
	  public void deleteDBObject(DBObject entity) {
		  this.getEntityManager().remove(entityManager.contains(entity) ? entity : entityManager.merge(entity));
	  }

}
