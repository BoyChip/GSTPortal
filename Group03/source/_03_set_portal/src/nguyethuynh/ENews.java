package nguyethuynh;

import java.util.Date;

public class ENews {
	
	private int id;
	private Date pushlishDate;
	private Date endDate;
	private String titleE;
	private String contentE;
	private String titleM;
	private String contentM;
	

	public ENews() {
		// TODO Auto-generated constructor stub
	}

	public ENews(Date pushlishDate, Date endDate, String titleE,
			String contentE, String titleM, String contentM) {
		super();
		this.pushlishDate = pushlishDate;
		this.endDate = endDate;
		this.titleE = titleE;
		this.contentE = contentE;
		this.titleM = titleM;
		this.contentM = contentM;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getPushlishDate() {
		return pushlishDate;
	}

	public void setPushlishDate(Date pushlishDate) {
		this.pushlishDate = pushlishDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getTitleE() {
		return titleE;
	}

	public void setTitleE(String titleE) {
		this.titleE = titleE;
	}

	public String getContentE() {
		return contentE;
	}

	public void setContentE(String contentE) {
		this.contentE = contentE;
	}

	public String getTitleM() {
		return titleM;
	}

	public void setTitleM(String titleM) {
		this.titleM = titleM;
	}

	public String getContentM() {
		return contentM;
	}

	public void setContentM(String contentM) {
		this.contentM = contentM;
	}
	
	

}
