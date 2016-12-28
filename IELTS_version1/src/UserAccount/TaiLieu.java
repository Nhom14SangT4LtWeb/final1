package UserAccount;

public class TaiLieu {
	   private String doc_id;
	   private String doc_name;
	   private String doc_categ;
	   private String doc_guid;
	   private String upload_date;
	   private String user_id;
	   private String fold_id;
	   private String shared;
	   private String downloaded;
	   public TaiLieu(){
		   
	   }
	   public TaiLieu(String doc_id,String doc_name,String doc_categ,String doc_guid,String upload_date,String user_id,String fold_id, String shared,String downloaded) {
	        this.doc_id = doc_id;
	        this.doc_name = doc_name;
	        this.doc_categ = doc_categ;
	        this.doc_guid = doc_guid;
	        this.upload_date = upload_date;
	        this.user_id = user_id;
	        this.fold_id = fold_id;
	        this.shared = shared;
	        this.downloaded = downloaded;
	   }
	   public TaiLieu(String doc_name,String doc_categ,String doc_guid,String upload_date,String user_id,String fold_id) {
	        this.doc_name = doc_name;
	        this.doc_categ = doc_categ;
	        this.doc_guid = doc_guid;
	        this.upload_date = upload_date;
	        this.user_id = user_id;
	        this.fold_id = fold_id;
	   }
	   public String getdoc_id() {
	       return doc_id;
	   }
	 
	   public void setdoc_id(String doc_id) {
	       this.doc_id = doc_id;
	   }
	 
	 
	   public String getdoc_name() {
	       return doc_name;
	   }
	 
	   public void setdoc_name(String doc_name) {
	       this.doc_name = doc_name;
	   }
	   
	   public String getdoc_categ(){
		   return doc_categ;
	   }
	   public void setdoc_categ(String doc_categ){
		   this.doc_categ = doc_categ;
	   }
	   public String getdoc_guid(){
		   return doc_guid;
	   }
	   public void setdoc_guid(String doc_guid){
		   this.doc_guid = doc_guid;
	   }
	   public String getupload_date(){
		   return upload_date;
	   }
	   public void setupload_date(String upload_date){
		   this.upload_date = upload_date; 
	   }
	   public String getuser_id(){
		   return user_id;
	   }
	   public void setuser_id(String user_id){
		   this.user_id = user_id;
	   }
	   public String getfold_id (){
		   return fold_id;
	   }
	   public void setfold_id(String fold_id){
		   this.fold_id = fold_id;
	   }
	   public String getshared (){
		   return shared;
	   }
	   public void setshared(String shared){
		   this.shared = shared;
	   }
	   public String getdownloaded(){
		   return downloaded;
	   }
	   public void setdownloaded( String downloaded){
		   this.downloaded = downloaded;
	   }
}
