package po;

public class insider {
		private String name;		
		private String pname;
		private String defen;
		private String qiangduan;
		private String lanban;		
		public insider(){
			name = null;
			pname = null;
			defen = null;
			qiangduan = null;
			lanban = null;
		}
		
		public insider(String name,String pname,String defen,String qiangduan,String lanban){
			this.name = name;
			this.pname = pname;
			this.defen = defen;
			this.qiangduan = qiangduan;
			this.lanban = lanban;
			}
		public void setName(String name) {
			this.name = name;
		}

		public String getName() {
			return name;
		}

		public void setPname(String pname) {
			this.pname = pname;
		}

		public String getPname() {
			return pname;
		}

		public void setDefen(String defen) {
			this.defen = defen;
		}
		public String getDefen() {
			return defen;
		}
		public void setQiangduan(String qiangduan) {
			this.qiangduan = qiangduan;
		}
		public String getQiangduan() {
			return qiangduan;
		}
		public void setLanban(String lanban) {
			this.lanban = lanban;
		}

		public String getLanban() {
			return lanban;
		}


}
