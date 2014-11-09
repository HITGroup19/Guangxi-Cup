package po;

public class admin {
	private String username;
	private String password;
	public admin(){
		username = null;
		password = null;
	}
	public admin(String username,String password){
		this.username = username;
		this.password = password;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsername() {
		return username;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return password;
	}
}
