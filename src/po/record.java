package po;

public class record {
	private String one;
	private String two;
	private String three;
	private String four;
	private String five;
	private String six;
	private String seven;
	private String eight;
	public record(){
		one = null;
		two = null;
		three = null;
		four = null;
		five = null;
		six = null;
		seven = null;
		eight = null;
	}
	
	public record(String one,String two,String three,String four,String five,String six,String seven,String eight){
		this.one = one;
		this.two= two;
		this.three = three;
		this.four= four;
		this.five = five;
		this.six= six;
		this.seven = seven;	
		this.eight = eight;	
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
	public void setFive(String five) {
		this.five = five;
	}

	public String getFive() {
		return five;
	}
	public void setSix(String six) {
		this.six = six;
	}

	public String getSix() {
		return six;
	}
	public void setSeven(String seven) {
		this.seven = seven;
	}

	public String getSeven() {
		return seven;
	}
	public void setEight(String eight) {
		this.eight = eight;
	}

	public String getEight() {
		return eight;
	}
}
