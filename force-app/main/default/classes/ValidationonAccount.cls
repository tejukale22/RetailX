public class ValidationonAccount {

    public static void validationRuleAccount(list<Account> acclist){
        
        for(Account acc : acclist){
            if(acc.Active__c == 'Yes'){
                acc.addError('You can not delete active Account');
            }
        }
    }
    
     public static void validationNullAccount(list<Account> acclist){
         for(Account acc : acclist){
            if(acc.Active__c == null){
                acc.addError('Please add the values in Active fileld');
            }
        }
	}
}