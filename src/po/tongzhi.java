package po;

public class tongzhi {
		private String date;
		private String actor;	
		public tongzhi(){
			date = null;
			actor = null;
		}
		
		public tongzhi(String date,String actor){
			this.date=date;
			this.actor=actor;
		}
		public void setActor(String actor) {
			this.actor = actor;
		}

		public String getActor() {
			return actor;
		}

		public void setDate(String date) {
			this.date = date;
		}

		public String getDate() {
			return date;
		}

}
