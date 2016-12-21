package UserAccount;
public class MyFile {
	   private int file_id;
	   private String file_name;
	   private String file_guid;
	   private String upload_date;
	   private int shared;
	 
	   public MyFile() {
	 
	   }
	 
	   public MyFile(int file_id, String name, String guid, String date, int shared) {
	       this.file_id = file_id;
	       this.file_name = name;
	       this.file_guid = guid;
	       this.upload_date = date;
	       this.shared = shared;
	   }
	   public int getID() {
	       return file_id;
	   } 
	   public void setID(int file_id) {
	       this.file_id = file_id;
	   }
	   public String getName() {
	       return file_name;
	   }
	   public void setName(String name) {
	       this.file_name = name;
	   }
	   public String getGuid(){
		   return file_guid;
	   }
	   public void setGuid(String guid){
		   this.file_guid = guid;
	   }
	   public String getupload_date() {
	       return upload_date;
	   }
	   public void setupload_date(String date) {
	       this.upload_date = date ;
	   }
	   public int getShared(){
		   return shared;
	   }
	   public void setShared(int shared){
		   this.shared = shared;
	   }
	
	}
