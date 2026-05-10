public class CaseTriggerHandler {
  
    // usecase 16 - Allow case deletion only by the system administrator
    
    public static void casetriggerbeforedelete(list<case> caserecords){
        
        Id loginuser = Userinfo.getprofileId(); // get the iserlogin id
        Id Systemadmin = [Select id , Name from Profile where Name = 'System Administrator' Limit 1].Id; // get the systemadmin user id
        
        for(case caserec : caserecords){
            if(loginuser!= Systemadmin){
                caserec.addError('Only system admin profile user can delete the record');
            }
        }
    }
}