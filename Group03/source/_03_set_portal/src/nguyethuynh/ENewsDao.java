package nguyethuynh;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class ENewsDao {
	
	SessionFactory template;  
	Session session;

	public ENewsDao() {
		template = HibernateUtil.getSessionFactory();
		session = template.openSession();
	}

	public List<ENews> getListENews()
	{
		session.beginTransaction();
		List<ENews> list = new ArrayList<ENews>();
		list = session.createCriteria(ENews.class).list();
		session.getTransaction().commit();
		return list;
	}
	
}
