package po;

public class tongzhi {
	private String one;
	private String two;
	public tongzhi(){
		one = null;
		two = null;
	}
	
	public tongzhi(String one,String two){
		this.one = one;
		this.two= two;
	}
	public void setOne(String one) {
		this.one = one;
	}

	public  String getOne() {
		return one;
	}

	public void setTwo(String two) {
		this.two = two;
	}

	public String getTwo() {
		return two;
	}

}
