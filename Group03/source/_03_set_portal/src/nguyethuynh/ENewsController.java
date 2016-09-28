package nguyethuynh;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView; 
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ENewsController {
	
	private ENewsDao enewsDao = new ENewsDao();
	
	@RequestMapping("/subscribe")
	public ModelAndView saveNewEmail(HttpServletRequest request, HttpServletResponse res)
	{	
		String email = request.getParameter("subEmail");
		SubscribeDao subDao = new SubscribeDao();
		SubscribeENews subNew = new SubscribeENews(email, "unconfirmed");
		subNew = new SubscribeENews(email, "unconfirmed");
		if(!subDao.isExist(subNew))
		{
			subDao.addSubEmail(subNew);
			//subDao.closeSession();		
			return new ModelAndView("/jsp/subscribeSuccess");
		}
		else
		{
			return new ModelAndView("jsp/subscribeError");
		}
	}
	
//	@Autowired
//	private MessageSource mesg;
//	
//	@RequestMapping(value="/subscribe", method=RequestMethod.POST)
//	public String addNewEmail(SubscribeENews sub, Model uiModel, BindingResult result, RedirectAttributes re, 
//			HttpServletRequest httpServletRequest, Locale locale)
//	{
//		if(result.hasErrors())
//		{
//			return "jsp/subscribeError";
//		}
//		re.addFlashAttribute("Success", mesg.getMessage("saved-successfully", 
//				new String[]{sub.getEmail()}, locale));
//		return "redirect:/subscribe" + encodeUrlPathSegment("" + sub.getEmail(), httpServletRequest);
//    }
	
	@RequestMapping("/unsubscribe")
	public ModelAndView deleteNewEmail(HttpServletRequest request, HttpServletResponse res)
	{	
		String email = request.getParameter("subEmail");
		SubscribeDao subDao = new SubscribeDao();
		//SubscribeENews subNew = new SubscribeENews(email, "unconfirmed");
//		if(subDao.isExist(subNew))
//		{
//			subDao.deleteSubEmail(subNew);
			//subDao.deleteSubEmail(email);
			//subDao.closeSession();
			return new ModelAndView("/view/deletedSubscribed");
//		}
//		else
//		{
//			return new ModelAndView("jsp/subscribeError");
//		}
	}
	
	@RequestMapping("ListENews")
	public ModelAndView displayENewsList(HttpServletRequest request, HttpServletResponse res)
	{
		
		List<ENews> list = enewsDao.getListENews();
		return new ModelAndView("jsp/ListENews","listENews", list);
	}
	
}

