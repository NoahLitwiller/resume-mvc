package noahlitwiller.web.blog.model;

public class Blog {
	
	private String name;
	private BlogEntry[] entries;
	
	public Blog() {}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BlogEntry[] getEntries() {
		return entries;
	}
	
	public void setEntries(BlogEntry[] entries) {
		this.entries = entries;
	}

}
