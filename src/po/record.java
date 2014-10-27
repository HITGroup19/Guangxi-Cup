package po;

public class record {
	private String team;
	private String time;
	private String news;
	public record(){
		team = null;
		time = null;
		news = null;
	}
	
	public record(String team,String time,String news){
		this.team = team;
		this.time= time;
		this.news = news;
	}
	public void setTeam(String team) {
		this.team = team;
	}

	public String getTeam() {
		return team;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getTime() {
		return time;
	}
	public void setNews(String news) {
		this.news = news;
	}

	public String getNews() {
		return news;
	}

}
