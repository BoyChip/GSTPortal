package login;

public class UserLevel {

	private int id;
	private String levelName;
	
	public UserLevel() {
		// TODO Auto-generated constructor stub
	}

	public UserLevel(String levelName) {
		super();
		this.levelName = levelName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLevelName() {
		return levelName;
	}

	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}
	
	

}
