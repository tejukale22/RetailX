public class AccountCalculator {
    
    @future
    public static void CountContact(list<Id> accids){
        list<Account> accList = [Select Id, (Select Id from Contacts)
                                 from Account where Id IN:accids];
    
    for(Account acc: acclist){
        acc.Number_of_contacts__c = acc.Contacts.size();
        
        if(!accList.isEmpty()){
            update accList;
        }
  	  }
    }
}