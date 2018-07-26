package noahlitwiller.web.blog.model;

import java.util.Date;

public class BlogEntry {
	
	private String title;
	private String subtitle;
	private String publishedDateString;
	private String imageRef;
	private String content;
	private String postId;
	private String type;
	
	public BlogEntry() {}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getPublishedDateString() {
		return publishedDateString;
	}

	public void setPublishedDateString(String publishedDateString) {
		this.publishedDateString = publishedDateString;
	}

	public String getImageRef() {
		return imageRef;
	}

	public void setImageRef(String imageRef) {
		this.imageRef = imageRef;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getPostId(){
		return postId;
	}
	
	public void setPostId(String postId){
		this.postId = postId;
	}
	
	public String getType(){
		return type;
	}
	
	public void setType(String type){
		this.type = type;
	}
}
