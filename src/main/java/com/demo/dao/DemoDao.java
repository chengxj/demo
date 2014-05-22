package com.demo.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.demo.entity.Activities;
import com.demo.entity.Registration;

@Repository
@Transactional(value = "transactionManager", noRollbackFor = { NoResultException.class })
public class DemoDao {

	@PersistenceContext(unitName = "entityManagerFactory")
	private EntityManager entityManager;

	private static int pageSize = 10;


	/**
	 * 
	 * @param id
	 * @return
	 */
	public Activities getActivitiesById(long id) {
		 String hql = "from Activities where id = :uuid";
		 return entityManager.createQuery(hql, Activities.class)
				 .setParameter("uuid", id)
				 .getSingleResult();
	}
	
	/**
	 * 
	 * @param activities_id
	 * @return
	 */
	public List<Registration> getRegistrations(long activities_id) {
		String hql = "from Registration where activities_id = :activities_id";
		return entityManager.createQuery(hql, Registration.class).setParameter("activities_id", activities_id)
				.getResultList();
	}
	
	/**
	 * 
	 * @param uuid
	 * @param activities_id
	 * @return
	 */
	public Registration getRegistrationById(long uuid, long activities_id) {
		 String hql = "from Registration where id = :uuid and activities_id = :activities_id";
		 return entityManager.createQuery(hql, Registration.class)
				 .setParameter("uuid", uuid)
				 .setParameter("activities_id", activities_id)
				 .getSingleResult();
	}
	
	/**
	 * 
	 * @param request
	 * @return
	 */
	public List<Activities> searchActivities(String searchTerm, int index) {
		String hql;
		if (searchTerm == null || searchTerm.isEmpty()) {
			hql = "from Activities";
		} else {
			hql = "From Activities where title like '%" + searchTerm + "%'";
		}
		return entityManager.createQuery(hql, Activities.class)
				.setFirstResult(index)
				.setMaxResults(pageSize)
				.getResultList();
	}

	/**
	 * 
	 * @param searchTerm
	 * @return
	 */
	public int getSearchActivitiesCount(String searchTerm) {
		try {
			String hql;
			if (searchTerm == null || searchTerm.isEmpty()) {
				hql = "select count(*) from Activities";
			} else {
				hql = "select count(*) From Activities where title like '%" + searchTerm + "%'";
			}
			return entityManager.createQuery(hql, Long.class)
					.getSingleResult().intValue();
		} catch (NoResultException e) {
			return 0;
		}
	}

}
