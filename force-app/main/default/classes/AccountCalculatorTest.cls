@isTest
public class AccountCalculatorTest {
	@isTest
    private static void CountContactTest(){
        List<Account> acclist = new List<Account>();
        
        for(Integer i=0; i<250; i++){
            acclist.add(new Account (Name = 'Test'+i));
         }
        insert acclist;
        
        List<contact> conlist = new List<contact>();
        List<id> accIds = new List <id>();
        for (Account acc : acclist){
            conlist.add(new contact(FirstName = 'Test', LastName = acc.Name, AccountId = acc.Id));
            accIds.add(acc.id);
        }
        insert conlist;
        
        Test.startTest();
        AccountCalculator.CountContact(accIds);
        Test.stopTest();
        
        List<Account> accs = [select id, Number_of_contacts__c from Account];
        
        system.assertEquals(1, accs[0].Number_of_contacts__c, 'Contacts are not counted successfully');
    }
}