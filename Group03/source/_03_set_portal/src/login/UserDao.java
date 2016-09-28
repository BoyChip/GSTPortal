package login;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import nguyethuynh.HibernateUtil;

public class UserDao {
	SessionFactory template;
	Session session;

	public UserDao() {
		template = HibernateUtil.getSessionFactory();
		session = template.openSession();
	}

	public boolean CheckUser(User user) {
		String email = user.getEmail();
		String password = user.getPassword();
		Query query = session.createQuery("from User where email=:email and password=:password");
		query.setParameter("email", email);
		query.setParameter("password", password);
		if (query.uniqueResult() != null)

			return true;
		else
			return false;
	}
	
	public void closeSession()
	{
		session.close();
	}
}
