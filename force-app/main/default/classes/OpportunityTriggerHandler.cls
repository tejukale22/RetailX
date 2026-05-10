public class OpportunityTriggerHandler {
    
    
    //usecase 15 : As soon as opportunity is closed lost, remove all opportunity team members from the opportunity
    
    public static void ActivityHandlerAfterdelete(list<opportunity> oldrecords){
        
    }
    
    public static void insertAccAnnualRevenue(list<opportunity> opplist,Map<Id,opportunity> oldMap){
        set<Id> accIds = new set<Id>();
         if(!opplist.isEmpty()){
            for(opportunity opp : opplist){
                if((opp.AccountId != null && oldMap == null)
                  || (oldMap != null && opp.AccountId != null
                  && opp.Amount != oldMap.get(opp.Id).Amount)){
                    accIds.add(opp.AccountId);                  
                } 
            }
        }
        
        List<Account> acclist = [select Id , AnnualRevenue,
                                (Select Id, Amount from Opportunities)
                                From Account where Id IN : accIds];
        
        if(!acclist.isEmpty()){
            for(Account acc : acclist){
               Decimal total = 0;
                for(opportunity opp : acc.Opportunities){
                    total = total + opp.Amount;
                }
                acc.Annualrevenue = total;
            }
        }
        
        if(!acclist.isEmpty()){
            update acclist;
        }
    }

}