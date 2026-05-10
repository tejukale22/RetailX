trigger AccountTriggerHandler on Account (before update, after update, after insert) {
    
     if(trigger.isafter && trigger.isUpdate){
          AccountTriggerHandler.HandleafterinsertActivities(trigger.new, trigger.oldMap);    
 }   
   
    if(trigger.isafter && trigger.isinsert){
          AccountTriggerHandler.HandleafterinsertActivities(trigger.new, trigger.oldMap);    
 }    
    
    if(trigger.isbefore && trigger.isupdate){
          AccountTriggerHandler.HandleBeforeActivities(trigger.new, trigger.oldMap);    
 }    
    if(trigger.isafter && trigger.isupdate){
          AccountTriggerHandler.HandleAfterActivities(trigger.new, trigger.oldMap);    
 }    


}