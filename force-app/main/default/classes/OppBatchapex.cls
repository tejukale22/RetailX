public class OppBatchapex implements Database.Batchable<sObject>, Database.stateful {
    
    public Integer recordcount = 0;
    
    public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getQueryLocator([select Id, Name from opportunity]);
    }
    
    public void Execute (Database.BatchableContext bc, List<opportunity> opps){
        
        for(opportunity op : opps){
            op.Leadsource = 'Web';
        }
        update opps;
        recordcount = recordcount + opps.size();
    }
    
    public void finish(Database.BatchableContext bc){
        system.debug('Total Record processed'+ 	recordcount);
    }

}