package com.demo.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.demo.entity.Activities;
import com.demo.request.ActivitiesRequest;

@Repository
@Transactional(value = "transactionManager", noRollbackFor = { NoResultException.class })
public class DemoDao {

	@PersistenceContext(unitName = "entityManagerFactory")
	private EntityManager entityManager;

	private static int pageSize = 10;

	private String getSearchActivitiesHql(ActivitiesRequest request) {
		String hql;
		if (request.searchTerm == null || request.searchTerm.isEmpty()) {
			hql = "from Activities";
		} else {
			hql = "From Activities where title like '%" + request.searchTerm + "%'";
		}
		return hql;
	}
	
	private String getSearchActivitiesCountHql(String searchTerm) {
		String hql;
		if (searchTerm == null || searchTerm.isEmpty()) {
			hql = "select count(*) from Activities";
		} else {
			hql = "select count(*) From Activities where title like '%" + searchTerm + "%'";
		}
		return hql;
	}
	
	/**
	 * 
	 * @param request
	 * @return
	 */
	public List<Activities> searchActivities(ActivitiesRequest request) {
		String hql = getSearchActivitiesHql(request);
		return entityManager.createQuery(hql, Activities.class)
				.setFirstResult(request.index).setMaxResults(pageSize)
				.getResultList();
	}

	/**
	 * 
	 * @param searchTerm
	 * @return
	 */
	public int getSearchActivitiesCount(String searchTerm) {
		try {
			String hql = getSearchActivitiesCountHql(searchTerm);
			return entityManager.createQuery(hql, Long.class)
					.getSingleResult().intValue();
		} catch (NoResultException e) {
			return 0;
		}
	}

}
