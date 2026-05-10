trigger leadTrigger on Lead (After insert, before Update, before Delete) {
    
    if(trigger.isbefore && trigger.isDelete){
        LeadTriggerHandler.TriggerhandlerbeforeDelete(trigger.old);
    }
    
    
    if(trigger.isinsert && trigger.isAfter){
        HandlerActvityAfterInsert.TriggerHandlerActivityAfterInsert(trigger.new);
    }
    
    
    
    
    if(trigger.isbefore && trigger.isUpdate){
        for(lead leadrec : trigger.New){
            leadrec.Status = 'Working-contacted';
            if(leadrec.industry == 'Healthcare'){
                leadrec.LeadSource = 'Purchased List';
                leadrec.SICCode__c = '1100';
                leadrec.Primary__c = 'Yes';
            }
        }
    }

}