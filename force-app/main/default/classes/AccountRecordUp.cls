public class AccountRecordUp {
    public void UpdateAccountRecord(){
        List<Account> acctobeupdate = new List<Account>();
            Set<Id> accidset = new Set<Id>();
            
            for(contact con : [Select id,Account.Id from contact where Name lIKE '%Test%'
                              And Account.Id != Null]){
                                  If(!accidset.contains(con.account.id)){
                                      Account acc = new Account();
                                      Acc.Id = con.Account.Id;
                                      acc.active__c = 'Yes';
                                      acc.Rating = 'Cold';
                                      acctobeupdate.add(acc);
                                      accidset.add(con.Account.Id);
                                  }            
            }
        if(!acctobeupdate.isEmpty()){
            update acctobeupdate;
        }
    }	

}