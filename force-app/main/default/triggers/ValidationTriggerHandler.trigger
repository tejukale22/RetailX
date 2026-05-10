trigger ValidationTriggerHandler on Account (before delete, before insert) {
    
    if(Trigger.isdelete){
        if(Trigger.isbefore){
            ValidationonAccount.validationRuleAccount(Trigger.old);
        }
        
    }
    if(Trigger.isinsert){
        if(Trigger.isbefore){
            ValidationonAccount.validationNullAccount(Trigger.new);
        }
        
    }
    
}