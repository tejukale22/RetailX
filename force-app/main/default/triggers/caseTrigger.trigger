trigger caseTrigger on Case (before insert, before delete) {
    
    
    if(trigger.isbefore && trigger.isdelete){
        CaseTriggerHandler.casetriggerbeforedelete(trigger.old);
    }
    
    
    if(trigger.isbefore && trigger.isinsert){
        for(case caseOrigin : trigger.New){
            if(caseOrigin.Origin == 'Phone'){
                caseOrigin.Priority = 'High';
            }
            else{
               caseOrigin.Priority = 'Low';  
            }

              
        }
    }
    

}