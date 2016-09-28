package general;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	public IndexController() {
		// TODO Auto-generated constructor stub
	}

	@RequestMapping("SubscribeForm")
	public ModelAndView displaySubForm()
	{
		return new ModelAndView("view/subscribe_eNewsForm");
	}
	
	@RequestMapping("UnsubscribeForm")
	public ModelAndView displayUnsubForm()
	{
		return new ModelAndView("view/unsubscribe_eNewsForm");
	}
	@RequestMapping("LoginForm")
	public ModelAndView displayLoginForm()
	{
		return new ModelAndView("view/LoginForm");
	}
	
}
