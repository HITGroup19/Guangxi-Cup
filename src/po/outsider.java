package po;

public class outsider {
	private String name;
	private String win;
	private String lose;	
	public outsider(){
		win = null;
		lose = null;
		name = null;
	}
	public outsider(String win,String lose, String name){
		this.win = win;
		this.lose = lose;
		this.name = name;
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

}
