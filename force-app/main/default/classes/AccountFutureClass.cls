public class AccountFutureClass {

    @future
    public static void updateAccountNames(Set<Id> accountIds){

        List<Account> accList = [SELECT Id,Name FROM Account WHERE Id IN :accountIds];

        for(Account acc : accList){
            acc.Name = acc.Name + ' Updated';
        }

        update accList;
    }
}