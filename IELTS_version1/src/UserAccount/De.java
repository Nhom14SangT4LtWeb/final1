package UserAccount;

public class De {
	private String idDe;
	private String idUser;
	private String docGuid;
	private String mp3Guid; 
	public De(){
		
	}
	public De(String idUser, String docGuid, String mp3Guid){
		this.idUser = idUser;
		this.docGuid = docGuid;	
		this.mp3Guid = mp3Guid;
	}
	public String getmp3Guid(){
		return mp3Guid;
	}
	public void setmp3Guid(String mp3Guid){
		this.mp3Guid = mp3Guid;
	}
	public String getidDe(){
		return idDe;
	}
	public void setidDe(String idDe){
		this.idDe = idDe;
	}
	public String getidUser(){
		return idUser;
	}
	public void setidUser(String idUser){
		this.idUser = idUser;
	}
	public String getdocGuid(){
		return docGuid;
	}
	public void setdocGuid(String docGuid){
		this.docGuid = docGuid;
	}
}
