package po;

public class result {
	private String one;
	private String two;
	private String three;
	public result(){
		one = null;
		two = null;
		three = null;
	}
	
	public result(String one,String two,String three){
		this.one = one;
		this.two= two;
		this.three = three;
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
	public void setThree(String three) {
		this.three = three;
	}

	public String getThree() {
		return three;
	}


}
