@isTest
private class AccountRecordUpTest {
	
    @isTest
    Private static void updateAccountTest(){
        Account acc = new Account();
        acc.Name	= 'Test Account';
        acc.Rating = 'Hot';
        insert acc;
        
        contact con = new contact();
        con.FirstName = 'Test';
        con.LastName = 'Test';
        con.AccountId = acc.Id;
        insert con;
        
      AccountRecordUp obj1  = new AccountRecordUp();
        obj1.UpdateAccountRecord();
        
        List<Account> acclist = [select id,Rating from Account where Id =: acc.id];
        System.assertEquals('cold',acclist[0].Rating);
    }
    
}