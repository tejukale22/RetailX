trigger AccountTrigger on Account (after insert){

    Set<Id> accIds = new Set<Id>();

    for(Account acc : Trigger.new){
        accIds.add(acc.Id);
    }

    AccountFutureClass.updateAccountNames(accIds);
}



/*trigger AccountTrigger on Account (before insert,before update) {
    
    if(Trigger.isbefore){
        if(trigger.isinsert){
            AccountTriggHandler.copyBillingToShipping(trigger.new);
        }else if(trigger.isupdate){
             AccountTriggHandler.copyBillingToShipping(trigger.new);
        }
    }

}*/