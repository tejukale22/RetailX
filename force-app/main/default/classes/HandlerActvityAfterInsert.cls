public class HandlerActvityAfterInsert {
    
    Public Static void TriggerHandlerActivityAfterInsert(List<Lead> leadrecords){
        list<Task> learecordToinsert = new list<Task>();
        for(lead leadrec : leadrecords){
     			Task Taskrecord = new Task();
                System.debug('Taskrecord'+ Taskrecord);
                Taskrecord.Priority = 'High';
                Taskrecord.OwnerId = leadrec.ownerId;
                Taskrecord.Description = 'Please Split the revenuw among the team members';
                Taskrecord.WhoId = leadrec.Id;
                Taskrecord.Subject = 'Split Revenue';
                learecordToinsert.add(Taskrecord);
                System.debug('Taskrecord'+ Taskrecord);
        }
        
        if(!learecordToinsert.isEmpty()){
            insert learecordToinsert;
        }
        
    }

}