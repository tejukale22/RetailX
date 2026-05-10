public class ColletionsInApex {
    
    public static void ListCollectionInApex(){
          
    List<String> mylist = new List<String>{'The girl in room 105', 'Ikagai','5AM club'};
    list<Integer> myInt = new List<Integer>{12,34,56,78};
    list<Boolean> myvalue = new List<Boolean>{true,false};
       
    List<String> Favdrink = new List<String>();
    Account accrec = new Account();
    List<Account> AccountRec = new List<Account>{accrec};
  
    myInt.add(67);
    
    System.debug('List of Integer Value index =' + myInt.get(3));
    System.debug('My book count is ='+mylist.size());
    System.debug('Is my list Empty' + mylist.isEmpty());
    System.debug('Is my list Empty' + Favdrink.isEmpty());
    System.debug('5 AM club Book place' + mylist.indexOf('5AM club'));
        
   }

    public static void HandleSetCollection(){
        Set<String> myPaintings = new Set<String>();
        Set<String> myEarning = new Set<String>{'INR','USD','$','AED','CAD'};
            
        System.debug(myEarning);
        
        System.debug(myEarning.add('SGD'));
       System.debug(myEarning.remove('$'));
        System.debug(myEarning.contains('MRU'));
        System.debug(myEarning.size());
        
    }
    
    public static void HandleMapCollection(){
        Map<String,String> employeeDetails =  new Map<String, String>();
        employeeDetails.put('EMP101','sona shejal');
        employeeDetails.put('EMP102','Tejasvi kale');
        
       employeeDetails.put('EMP103','Anuradha Kate');  
  
        employeeDetails.put('EMP105','Shrre ka');
       
        System.debug('All Employee Ids are  '+employeeDetails.keySet());
        
        System.debug('All Employee Name are  '+employeeDetails.Values());
        
    }
}