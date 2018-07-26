package noahlitwiller.web.blog.model.utils;

import java.io.File;
import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import noahlitwiller.web.blog.model.Blog;
import noahlitwiller.web.blog.model.constants.BlogConstants;

public class BlogUtils {

	public static Blog getBlogObjectFromJSONFile(String fileName) {
		ObjectMapper jacksonMapper = new ObjectMapper();
		Blog blog = null;
		try {
			blog = jacksonMapper.readValue(new File(BlogConstants.FULL_DATA_DIRECTORY_PATH + fileName), Blog.class);
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return blog;
	}
	
}
