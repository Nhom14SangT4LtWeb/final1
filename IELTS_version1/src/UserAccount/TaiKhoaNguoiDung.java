package UserAccount;

public class TaiKhoaNguoiDung {
	 public static final String GENDER_MALE ="M";
	   public static final String GENDER_FEMALE = "F";
	    
	   private String userName;
	   private String password;
	   private String fullName;
	   private String email;
	   private String telephone;
	   private String nationaly;
	   private String dateOfBirth;
	   private String userRole;
	   private String ativationDate;
	   private String avatar;
	   private String active;
	   private String publicDate;
	   
	   public TaiKhoaNguoiDung() {
	        
	   }
	   public TaiKhoaNguoiDung(String fullNameRegis,String userNameRegis,String emailRegis,String passwordRegis,String userRoleRegis,String ativationDate,String active) {
	        this.fullName = fullNameRegis;
	        this.userName = userNameRegis;
	        this.email = emailRegis;
	        this.password = passwordRegis;
	        this.userRole = userRoleRegis;
	        this.ativationDate = ativationDate;
	        this.active = active;
	   }
	   public String getUserName() {
	       return userName;
	   }
	 
	   public void setUserName(String userName) {
	       this.userName = userName;
	   }
	 
	 
	   public String getPassword() {
	       return password;
	   }
	 
	   public void setPassword(String password) {
	       this.password = password;
	   }
	   
	   public String getFullName(){
		   return fullName;
	   }
	   public void setFullName(String fullName){
		   this.fullName = fullName;
	   }
	   public String getEmail(){
		   return email;
	   }
	   public void setEmail(String email){
		   this.email = email;
	   }
	   public String getTelephone(){
		   return telephone;
	   }
	   public void setTelephone(String telephone){
		   this.telephone = telephone; 
	   }
	   public String getNationaly(){
		   return nationaly;
	   }
	   public void setNationaly(String nationaly){
		   this.nationaly = nationaly;
	   }
	   public String getDateOfBirth (){
		   return dateOfBirth;
	   }
	   public void setDateOfBirth(String dateOfBirth){
		   this.dateOfBirth = dateOfBirth;
	   }
	   public String getUserRole (){
		   return userRole;
	   }
	   public void setUserRole(String userRole){
		   this.userRole = userRole;
	   }
	   public String getAtivationDate(){
		   return ativationDate;
	   }
	   public void setAtivationDate( String ativationDate){
		   this.ativationDate = ativationDate;
	   }
	   public String getAvatar(){
		   return avatar;
	   }
	   public void setAvatar(String avatar){
		   this.avatar = avatar;
	   }
	   public String getActive(){
		   return active;
	   }
	   public void setActive(String active){
		   this.active = active;
	   }
	   public String getPublicDate(){
		   return publicDate;
	   }
	   public void setPublicDate(String publicDate){
		   this.publicDate = publicDate;
	   }
	   
}