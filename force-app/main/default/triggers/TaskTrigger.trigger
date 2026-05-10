trigger TaskTrigger on Task (before insert) {

    if(trigger.isInsert &&  trigger.isbefore){
        for(task taskrecord: Trigger.NEW){
            system.debug('found task record');
            taskrecord.Priority = 'High';
        }
    }
}