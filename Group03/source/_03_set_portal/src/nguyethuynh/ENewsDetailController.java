package nguyethuynh;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller

//@SessionAttributes("enews")
public class ENewsDetailController {

	public ENewsDetailController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping("/ENewsDetail")
	@ResponseBody
	public String display(@RequestParam("id") int id)
	{
		return "/jsp/eNewsDetail" + id;
	}
	
//	//@GetMapping
//	public String displayENews(@RequestParam("id") int eNewsId, ModelMap model)
//	{
//		
//	}
	
//	@RequestMapping("ENewsDetail")
//	public ModelAndView displayENewsContent(HttpServletRequest request, HttpServletResponse res)
//	{
//		return new ModelAndView("/jsp/eNewsDetail");
//	}

}
