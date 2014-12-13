package po;

public class number {
	
	private String number;
	private String password;
	public number(){
		number = null;
		password = null;
	}
	public number(String number,String password){
		this.number = number;
		this.password = password;
	}
	public void setNumber(String number) {
		this.number = number;
	}

	public String getNumber() {
		return number;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return password;
	}
}
