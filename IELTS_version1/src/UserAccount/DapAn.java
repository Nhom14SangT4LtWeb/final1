package UserAccount;

public class DapAn {
	private String idDA;
	private String idUser;
	private String idDe;
	private String causo;
	private String dapan;
	public DapAn(){
		
	}
	public DapAn(String idUser, String causo, String dapan, String idDe){
		this.idUser = idUser;
		this.causo =causo;
		this.dapan = dapan;
		this.idDe = idDe;
	}
	public String getidDe(){
		return idDe;
	}
	public void setidDe(String idDe){
		this.idDe =idDe;
	}
	public String getidDA(){
		return idDA;
	}
	public void setidDA(String idDA){
		this.idDA = idDA;
	}
	public String getidUser(){
		return idUser;
	}
	public void setidUse(String idUser){
		this.idUser = idUser;
	}
	public String getcauSo(){
		return causo;
	}
	public void setcauSo(String causo){
		this.causo = causo;
	}
	public String getdapAn(){
		return dapan;
	}
	public void setdapAn(String dapan){
		this.dapan= dapan;
	}
}
