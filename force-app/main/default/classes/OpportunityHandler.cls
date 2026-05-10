public class OpportunityHandler {
    
    
    
    public static void ActivityHandlerafterInsert(){}
    
    public static void ActivityHandlerAfterUpdate(List<Opportunity> newRecords){
        System.debug('newRecords'+ newRecords);
        List<Task> TaskToInsert = new List<Task>();
        system.debug('TaskToInsert'+TaskToInsert);
        for(opportunity opp : newRecords){
            system.debug('opp'+opp);
            
            if(opp.StageName == 'Closed Won'){
                Task Taskrecord = new Task();
                System.debug('Taskrecord'+ Taskrecord);
                Taskrecord.Priority = 'High';
                Taskrecord.OwnerId = opp.ownerId;
                Taskrecord.Description = 'Please Split the revenuw among the team members';
                Taskrecord.WhatId = opp.Id;
                Taskrecord.Subject = 'Split Revenue';
                TaskToInsert.add(Taskrecord);
                System.debug('Taskrecord'+ Taskrecord);
            }
        }
        if(!TaskToInsert.isEmpty()){
            insert TaskToInsert;
            system.debug('TaskToInsert'+TaskToInsert);
            
        }        
    }
    
    /*  public static void activityHandlerAfterUpdate1(
List<Opportunity> newRecords,
Map<Id,Opportunity> oldMap
){

List<Task> tasksToInsert = new List<Task>();

for(Opportunity opp : newRecords){

Opportunity oldOpp = oldMap.get(opp.Id);

if(opp.StageName == 'Closed Won' && oldOpp.StageName != 'Closed Won'){

Task taskRecord = new Task();
taskRecord.Priority = 'High';
taskRecord.OwnerId = opp.OwnerId;
taskRecord.Description = 'Please split the revenue among team members';
taskRecord.WhatId = opp.Id;
taskRecord.Subject = 'Split Revenue';

tasksToInsert.add(taskRecord);
}
}

if(!tasksToInsert.isEmpty()){
insert tasksToInsert;
}
}*/
    
}