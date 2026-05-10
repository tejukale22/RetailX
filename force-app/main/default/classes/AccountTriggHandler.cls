public class AccountTriggHandler {

    public static void copyBillingToShipping(List<Account> acclist){
        for(Account acc : acclist){
            if(acc.CopyBilingtoShipping__c){
                acc.ShippingCity = acc.BillingCity;
                acc.ShippingCountry = acc.BillingCountry;
                acc.ShippingStreet = acc.BillingStreet;
                acc.ShippingState = acc.BillingState;
                acc.ShippingPostalCode = acc.BillingPostalCode;
            }
        }        
    }
}