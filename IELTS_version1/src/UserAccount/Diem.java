package UserAccount;

public class Diem {
	private String idDiem;
	private String idUser;
	private String diem;
	private String ngay;
	public Diem(){
		
	}
	public Diem(String idUser,String diem, String ngay){
		this.idUser =idUser;
		this.diem =diem;
		this.ngay=ngay;
	}
	public String getidDiem(){
		return idDiem;
	}
	public void setidDiem(String idDiem){
		this.idDiem = idDiem;
	}
	public String getidUser(){
		return idUser;
	}
	public void setidUser(String idUser){
		this.idUser = idUser;
	}
	public String getdiem(){
		return diem;
	}
	public void setdiem(String diem){
		this.diem = diem;
	}
	public String getngay(){
		return ngay;
	}
	public void setngay(String ngay){
		this.ngay=ngay;
	}
}
