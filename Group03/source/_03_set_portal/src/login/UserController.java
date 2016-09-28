package login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	private UserDao userdao = new UserDao();

	@RequestMapping("/login")
	public ModelAndView checkLogin(HttpServletRequest request, HttpServletResponse res) {
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User(email, password);
		if (!userdao.CheckUser(user))
			return new ModelAndView("jsp/loginSuccess");
		else
			return new ModelAndView("jsp/loginFail");
	}

}
