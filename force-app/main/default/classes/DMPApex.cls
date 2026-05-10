public class DMPApex {
    
    public static void createoppforacc(){
        list<Account> acclist = [select id, name, phone from Account where CreatedDate = THIS_WEEK];
        list<opportunity> opptobecreated = new list<opportunity>();
        
        if(!acclist.isEmpty()){
            for(Account acc : acclist){
                opportunity opp = new opportunity();
                opp.Name = acc.Name;
                opp.CloseDate = system.today();
                opp.stageName = 'prospecting';
                opp.AccountId = acc.Id;
                opptobecreated.add(opp);
            }
        }
        if(!opptobecreated.isEmpty()){
            insert opptobecreated;
        }
        system.debug('Created opportunities are >>>>' + opptobecreated);
    }

}