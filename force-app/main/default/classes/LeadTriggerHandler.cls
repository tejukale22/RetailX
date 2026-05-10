public class LeadTriggerHandler {
   
    
    // - Do not allow lead Deletion if it is working - contacted
    public static void TriggerhandlerbeforeDelete(list<lead> leadrecords){
        
        for (lead leadrec : leadrecords){
            system.debug(leadrec.Status);
            if(leadrec.Status == 'Working - Contacted'){
                leadrec.addError('You are not able delete record which is in-progress');
            }
        }    
    }
}