package nguyethuynh;

public class SubscribeENews {
	
	private int id;
	private String email;
	private String status;

	public SubscribeENews() {
		// TODO Auto-generated constructor stub
	}

	public SubscribeENews(String email, String status) {
		super();
		this.email = email;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
