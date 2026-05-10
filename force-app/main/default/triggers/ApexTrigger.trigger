Trigger ApexTrigger on Account (before insert, after insert, before update, after update) {
   
     if(Trigger.isInsert){
         if(Trigger.isbefore){
             AccountTriggerHandler.UpdateAccountRating(Trigger.new);
         }else if(Trigger.isafter){
             
        AccountTriggerHandler.createOpponAccount(Trigger.new);             
         }
        
     }
    
    if(Trigger.isupdate){
        if(Trigger.isbefore){
            AccountTriggerHandler.updatePhonedescription(Trigger.new, Trigger.oldMap); 
        }else if(Trigger.isafter){
            AccountTriggerHandler.updatePhoneonopp(Trigger.new, Trigger.oldMap); 
        }
    }

}