trigger ContactTrigger on Contact (before insert, after insert) {

    
    if(trigger.isbefore && trigger.isinsert){
        ContactHandlerbeforeInsert.HandlerbeforeInsert1(trigger.new);
    }
    
    if(trigger.isafter && trigger.isinsert){
        ContactHandlerbeforeInsert.Handleraftercreated(trigger.new);
    }
    
}