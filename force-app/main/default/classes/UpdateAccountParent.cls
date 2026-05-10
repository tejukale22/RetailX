public class UpdateAccountParent implements Queueable{
    
    private list<Account> accList;
    private Id parentaccId;
    
    public UpdateAccountParent(List<Account> accrecords, Id id){
        this.accList = accrecords;
    	this.parentaccId = id;
    }
    public void execute(QueueableContext context){
        for(Account acc : accList){
   			acc.parentId = parentaccId;
        }
        update accList;
    }

}