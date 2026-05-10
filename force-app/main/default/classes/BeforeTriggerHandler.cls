public class BeforeTriggerHandler {
    
    public static void beforeinsertupdaterating (list<Account> acclist){
        if(!acclist.isEmpty()){
            for(Account acc : acclist){
                if(acc.industry == 'Null' && acc.industry == 'Energy'){
                    acc.rating = 'Hot';
                } else{
                    acc.rating = 'Cold';
                }
                    
            }
        }
    }
    
    public static void updatephoneondec(list<Account> acclist, Map<Id, Account> OldMap){
        if(!acclist.isEmpty()){
            for(Account acc : acclist){
                if(acc.phone != OldMap.get(acc.Id).phone){
                    acc.Description = 'Phone number is updated'; 
                }
            }
        }
    }
    
    public static void beforedeleteonaccount(list<Account> acclist){
        if(!acclist.isEmpty()){
            for(Account acc : acclist){
                if(acc.Active__c == 'Yes'){
                    acc.addError('You can ddelete active active');
                }
                                    
            }
        }
    }

}