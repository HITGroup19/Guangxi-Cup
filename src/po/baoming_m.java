package po;

public class baoming_m {
	private String one;
	private String two;
	private String three;
	private String four;
	public baoming_m(){
		one = null;
		two = null;
		three = null;
		four = null;
	}
	
	public baoming_m(String one,String two,String three,String four,String five){
		this.one = one;
		this.two= two;
		this.three = three;
		this.four= four;
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

	public void setFour(String four) {
		this.four = four;
	}

	public String getFour() {
		return four;
	}

}
