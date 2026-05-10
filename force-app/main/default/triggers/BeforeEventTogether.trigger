trigger BeforeEventTogether on Account (before insert, before update, before delete ) {

    if(trigger.isInsert){
        if(trigger.isbefore){
            BeforeTriggerHandler.beforeinsertupdaterating(trigger.new);
        }
    }
    
    if(trigger.isUpdate){
        if(trigger.isbefore){
            BeforeTriggerHandler.updatephoneondec(trigger.new, trigger.OldMap);
        }
    }
    
    if(trigger.isdelete){
        if(trigger.isbefore){
            BeforeTriggerHandler.beforedeleteonaccount(trigger.old);
        }
    }
}