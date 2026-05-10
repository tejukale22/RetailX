public class Objects {

    Public static void Method1(){
        
        list<Account> Acclist = [SELECT id, name , phone FROM Account LIMIT 5];
        
        Set<Id> accId = new Set<Id>();
        
        Map<Id, account> accIdToAccountMap = new Map<Id, account>();
        
        if(!Acclist.isEmpty()){
         for (Account acc : Acclist){
          accId.add(acc.Id);
       		 }  
        } 
        if(!Acclist.isEmpty()){
         for (Account acc : Acclist){
          accIdToAccountMap.put(acc.Id,acc);
       		 }  
        } 
        
         System.debug('Account list >>' + Acclist);
         System.debug('Account set >>' + accId);
         System.debug('Account Map >>' + accIdToAccountMap);
    }
}