trigger OpportunityTrigger on Opportunity (before Update,after update,after delete) {
    
    if(trigger.isafter && trigger.isdelete){
        OpportunityTriggerHandler.ActivityHandlerAfterdelete(Trigger.old);
    }
    
    
    if(trigger.isafter && trigger.isupdate){
        
        OpportunityHandler.ActivityHandlerAfterUpdate(Trigger.new);
    }

}