@isTest
private class AccountTriggHandlerTest {
	@isTest
    private static void copyBillingToShippingTest(){
        
        List<Account> acclist = new List<Account>();
        for(Integer i=0;i<2;i++){
            Account acc = new Account();
            acc.Name = 'Test' + i;
            acc.BillingCity = 'TestCity';
            acc.BillingCountry = 'TestCountry';
            acc.BillingStreet = 'TestStreet';
            acc.BillingState = 'TestState';
            acc.BillingPostalCode = 'TestPostalcode';
        }
    }
    
}