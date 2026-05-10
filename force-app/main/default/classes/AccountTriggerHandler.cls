public class AccountTriggerHandler {
    
    //Usecase 11: when you create accounts with create N numbers of contact according to account; after this if you want to create contact after adding number of contact in update scenario 	Number_of_contacts__c
    Public static void HandleAfterInsertActivities(list<Account>newRecords, Map<Id, account> oldMap){
       list<Contact> conlist = new list<Contact>();
        for(account acc: newRecords){
            
            Account oldacc = oldMap.get(acc.id);
            
            if(acc.Number_of_contacts__c != Null && acc.Number_of_contacts__c != oldacc.Number_of_contacts__c){
                for(integer i = 0; i < acc.Number_of_contacts__c; i++){
                contact con = new contact();
                con.Lastname = acc.Name + i;
                con.AccountId = acc.Id;
                conlist.add(con);   
                }
            }
        }
        if(!conlist.isEmpty()){
            insert conlist;
        }
        
        
    }
    
    //usecase- 10 :Every time an account website is updated update the website field on all child contacts for the account
        Public static void HandleAfterActivities(list<Account>newRecords, Map<Id,Account> oldMap){
            
            Map<Id,String> acctowebsiteMap = new Map<Id,String>(); // this Map will store the Account ID , Website value;
            
            for(Account acc : newRecords){
                if(acc.Website != oldMap.get(acc.id).website){ // here we are checking whether the website value change or not
            	acctowebsiteMap.put(acc.id,acc.website); // put the account id and website updated values into map        
			                    
                }
            }            
            
            if(acctowebsiteMap.keyset().size()>0){  // we are checking the value of Id and website updated accounts values are greater than o then going forward
                List<contact> addcontoupdate = new List<contact>(); 
                list<contact> conRecords = [Select id,FirstName,website__c, AccountId From Contact where AccountId IN : acctowebsiteMap.keySet()];
                for(contact  con :conRecords){
                    con.website__c = acctowebsiteMap.get(con.AccountId);
                    addcontoupdate.add(con);
                }
                if(addcontoupdate.size()>0){
                    update addcontoupdate;
                }
             }
            
        }
    
    
    //usecase-9 : if an account with industry 'Agriculture' and type 'Prospect'is updated and onership is set to private do not allow user to set this onweship
    Public static void HandleBeforeActivities(list<Account>newRecords, Map<Id,Account> oldMap){
        for(Account acc : newRecords){
            if(acc.Industry == 'Agriculture' && acc.type == 'Prospect'){
                if(oldMap.get(acc.Id).ownership!= acc.ownership && acc.ownership == 'Private'){
                    acc.addError('Ownership cannot be modified');
                }
            }
        }
    }

    Public static void updatePhonedescription(list<Account>acclist, Map<Id,Account> oldMap){
        if(!acclist.isEmpty()){
            for(Account acc : acclist){
                if(acc.Phone != oldMap.get(acc.Id).Phone){
                    acc.Description = 'phone Number is updated';
                }
            }
        }
    }
    
    public static void updatePhoneonopp(list<Account> acclist, Map<Id, Account> oldMap){
        set<Id> accids = new set<Id>();
        list<opportunity> opptobecreated = new list<opportunity>();
        if(!acclist.isEmpty()){
            for(Account acc : acclist){
                accIds.add(acc.id);
            }
        }
        list <Account> newacclist = [select id, name , phone,
                                     (select id,Phone__c from Opportunities)
                                     from Account where Id IN:accids];
        if(!newacclist.isEmpty()){
            for(Account acc : newacclist){
                
                for(opportunity opty : acc.opportunities){
                    opportunity opp = new opportunity();
                    opp.Id = opty.Id;
                   opp.Phone__c = acc.Phone;
                    opptobecreated.add(opp);
                }
            }
        }
        if(!opptobecreated.isEmpty()){
            update opptobecreated;
        }
     }
    public static void UpdateAccountRating(List<Account> newList) {
        if(!newList.isEmpty()){            
            for(Account acc : newList){
                if(acc.Industry != null && acc.Industry == 'Energy'){
                    acc.Rating = 'Hot';
                }else{
                    acc.Rating = 'Cold';
            	}
            
       		 }
        }
    }
    
    public static void createOpponAccount(list<Account> acclist){
      list <opportunity> opplist = new list <opportunity>(); // intsance of opplist
        if(!acclist.isEmpty()){
            for(Account acc : acclist){
                opportunity opp = new opportunity();
                opp.Name = acc.Name;
                opp.CloseDate = system.today();
                opp.StageName = 'Prospecting';
               	opp.AccountId = acc.id;
                opplist.add(opp);
             }
            
        }
        
        if(!opplist.isEmpty()){
           insert opplist;
        }
    }
}