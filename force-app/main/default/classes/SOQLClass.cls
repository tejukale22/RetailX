public class SOQLClass {

    public static void SOQL(){
        
        list<Account> Acclist = [SELECT Id, Name from Account];
        
        list<Opportunity> opplist = [SELECT Id, Name from Opportunity];
    }
}