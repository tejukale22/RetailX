public class ContactHandlerbeforeInsert {

    // UseCase 17 : As sson as a contact is created, share the contact record with all users who are part of the contact Innovatore public group
  
    public Static void Handleraftercreated(list<contact> newRecords){
        list<ContactShare> contactlisttodd = new list<ContactShare>(); // we have created contactshare list
        Id coninnovativepublicgroup = [select id, name from group where Name = 'contact Innovator' Limit 1].Id; // here i get the id of innovative group
        for(contact conrec : newRecords){ // here i'm checking the contact which is newly created 
           contactshare conS = new contactshare();
            conS.ContactAccessLevel = 'Edit'; // giving conatact Edit access to the people  whoever we have shared thye record 
            conS.contactId = conrec.id;
            conS.RowCause = 'Manual';
            conS.UserOrGroupId = coninnovativepublicgroup;  
            contactlisttodd.add(conS);
        }
        if(!contactlisttodd.isEmpty()){
            insert contactlisttodd;
        }
        
    }
    
    //Usecase 14 : check id contact record exist with same LastName, Email, Phone, if so do not let new contact creation.
    
    public Static void HandlerbeforeInsert1(list<Contact> newRecords){
        list<Contact> existingrecords = [Select id, LastName, Phone, Email from contact];
        for(contact con : newRecords){
            for(contact existingcon :existingrecords){
                if(existingcon.LastName == con.LastName && existingcon.Phone == con.Phone && existingcon.Email == con.Email){
                    con.addError('Duplicate Records found!');
                }
            }
        }
        //Usecase : 20 Whenever a contact record is created fetch BillibgAddress from parent Account & save in it the MailingAddress field on the contact record.
    
        List<Id> accountIds = new List<Id>();
        for (Contact con :newRecords ){
          accountIds.add(con.AccountId);                    
        }
        
        Map<Id, Account> accountRecordMap = new Map<Id, Account>([select Id, BillingStreet, BillingCity, BillingState, BillingCountry, BillingPostalCode From Account where Id IN : accountIds]);
        
        for(Contact con : newRecords){
            if(accountRecordMap.containskey(con.AccountId)){
                con.MailingCity = accountRecordMap.get(con.AccountId).BillingCity;
                con.MailingStreet = accountRecordMap.get(con.AccountId).BillingStreet;
                con.MailingPostalCode = accountRecordMap.get(con.AccountId).BillingPostalCode;
                con.MailingCountry = accountRecordMap.get(con.AccountId).BillingCountry;
                con.MailingState = accountRecordMap.get(con.AccountId).BillingState;
            }
        }
    }
    
    
   
}