package nguyethuynh;

import java.io.Serializable;
import java.util.Locale.Category;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


public class SubscribeDao {
	
	SessionFactory template;  
	Session session;
	
	public SubscribeDao() {
		template = HibernateUtil.getSessionFactory();
		session = template.openSession();
	}
	
	//check if this email is already subscribed to list
	public boolean isExist(SubscribeENews s)
	{
		String email = s.getEmail();
		Query query = session.createQuery("from SubscribeENews where email =:email");
		query.setParameter("email", email);
		if(query.uniqueResult() != null)
			return true; //already
		else
			return false; //not yet
	}
	
	//save new subscribe
	public int addSubEmail(SubscribeENews s)
	{
		session.beginTransaction();
		if(!isExist(s))
		{
			session.save(s);
			session.getTransaction().commit();
			return s.getId();
		}	
		else
			return -1;		
	}
	
	//delete subscribed email
	public void deleteSubEmail(SubscribeENews s)
	{
		session.beginTransaction();
		if(isExist(s))
		{
			session.delete(s);
			
		}
//		SubscribeENews s;
//		s = (SubscribeENews)session.load(SubscribeENews.class, id);
//		session.beginTransaction();
//		session.delete(s);
//		session.getTransaction().commit();
//		session.flush();
//		try
//		{
//			Query query = session.createQuery("delete from SubscribeENews where email =:email");
//			query.setParameter("email", email);
//			session.getTransaction().commit();
//		}
//		catch(Exception e)
//		{
//			session.getTransaction().rollback();
//			e.printStackTrace();
//		}
	}
	
	public void deleteSubscriber(String email)
	{
		Query query = session.createQuery("delete from SubscribeENews where email =:email");
		query.setParameter("email", email);
		query.executeUpdate();
	}
	
	public void deleteEmail(String email)
	{
		//String email = s.getEmail();
		Query query = session.createQuery("from SubscribeENews where email =:email");
		query.setParameter("email", email);
		SubscribeENews subNew = (SubscribeENews)query.uniqueResult();
		Serializable id = subNew.getId();
		SubscribeENews persistentInstance = (SubscribeENews) session.load(SubscribeENews.class, id);
		if (persistentInstance != null) {
		    session.delete(persistentInstance);
		}
	}
	
	public SubscribeENews getById(int id)
	{
		session.beginTransaction();
		SubscribeENews sb = (SubscribeENews)session.get(SubscribeENews.class, id);
		session.getTransaction().commit();
		return sb;
	}
	public void deleteSub(SubscribeENews sb)
	{
		session.beginTransaction();
		session.delete(sb);
		session.getTransaction().commit();
	}
	
	//return list of e-News
	//public List<SubscribeENews> getList
	
	public void closeSession()
	{
		session.close();
	}

}
