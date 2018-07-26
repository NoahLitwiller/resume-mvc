package noahlitwiller.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import noahlitwiller.web.blog.model.Blog;
import noahlitwiller.web.blog.model.utils.BlogUtils;

@Controller
public class NoahLitwillerController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index() {
		return new ModelAndView("index");
    }
	
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
    public ModelAndView blog() {
		Blog model = BlogUtils.getBlogObjectFromJSONFile("blog.json");
		return new ModelAndView("blog", "model", model);
    }
	
	@RequestMapping(value = "/fullResume", method = RequestMethod.GET)
	public ModelAndView fullResume() {
		return new ModelAndView("fullResume");
	}
}
