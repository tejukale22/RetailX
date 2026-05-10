public class LoppsInApex {

    public static void Handleforloops(){
        List<String> mycharacter = new List<String>{'Trainer','mentor','Reader','Investor'};   
		
            for(string mycharacterName : mycharacter){
                System.debug(mycharacterName);
            }
            
        Set<Id> myAccIds = new Set<Id>{'001gK00000182QgQAI','001gK000000uyuLQAQ'};
        
        for(Id eachAccId : myAccIds){
            System.debug(eachAccId);
        }
        
        Map<Id, String> myAccountInfo = new Map <Id, String>();
        myAccountInfo.put('001gK00000182QgQAI', 'salesforce makes sence');
        myAccountInfo.put('001gK000000uyuLQAQ','Himanshu M');
        
        for(Id recordId : myAccountInfo.keyset()){
            System.debug('The Id is :' + recordId + 'and the value is' + myAccountInfo.get(recordId));
        }
        
        List<Account> accRecords = [Select Id, name from Account LIMIT 5];
        for(Account acc :accRecords){
            System.debug(acc.Name);
        }
        
           /** for(integer i = 0; i < mycharacter.size(); i++){
                System.debug(mycharacter.get(i));
            }**/
           
        
       
    }
}