package po;

public class outsider {
	private String name;
	private String win;
	private String lose;	
	private String rank;
	public outsider(){
		win = null;
		lose = null;
		name = null;
		rank = null;
	}
	public outsider(String win,String lose, String name, String rank){
		this.win = win;
		this.lose = lose;
		this.name = name;
		this.rank = rank;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
	public void setWin(String win) {
		this.win = win;
	}

	public String getWin() {
		return win;
	}

	public void setLose(String lose) {
		this.lose = lose;
	}

	public String getLose() {
		return lose;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getRank() {
		return rank;
	}
}
