<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <form action="sendemail" method="post" >
          
           <table align="center"><tr><td>
           Mail ID :</td><td><input type="text" name="emailId">  </input>
           </td></tr><tr><td>
           Password </td><td><input type="password" name="emailPassword"></input>
           </td></tr><tr><td>
           Recipient Mail Id</td><td> <input type="text" name="recipientEmailId"></input>
           </td></tr><tr><td>
           Mail Subject  </td><td><input type="text" name="emailSubject"></input>
           </td></tr><tr><td>
           Mail Body Mail ID </td><td><textarea name="emailBody"></textarea>
           </td></tr><tr><td>
           
           <input type="submit" value="Send Email"></input>
           </td></tr></table>
        </form>
     
    </body>
</html>