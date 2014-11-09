package po;

public class tongzhi {
		private String date;
		private String actor;
		private String where;
		public tongzhi(){
			date = null;
			actor = null;
			where = null;
		}
		
		public tongzhi(String date,String actor,String where){
			this.date=date;
			this.actor=actor;
			this.where=where;
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
		public void setWhere(String where) {
			this.where = where;
		}

		public String getWhere() {
			return where;
		}

}
