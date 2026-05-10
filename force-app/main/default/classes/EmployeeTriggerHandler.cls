public class EmployeeTriggerHandler {
    
    public static void validateEmployeeActive(list<Employee__c> emplist){
        if(!emplist.isEmpty()){
            for(Employee__c emp : emplist){
                if(emp.IsActive__c == true){
                    emp.addError('You can not delete active Employee record');
                }
            }
        }
    }
    
    public static void undeleteEmployee(list<Employee__c>emplist){
        set<Id> accIds = new set<Id>();
        list<Employee__c> emptobeupdated = new list<Employee__c>();
        
       if(!emplist.isEmpty()){
            for(Employee__c emp : emplist){
                if(emp.Account__c != null){
                    accIds.add(emp.Account__c);
                }
                
        Employee__c Emprec = new Employee__c();
        Emprec.Id = emp.Id;
        emprec.IsActive__c = true;
        emptobeupdated.add(Emprec);
            }
       }
     
        
	list<Account> acclist = [Select id, Employee_count__c,
                                 (Select id from Employees__r)
                                from Account where ID IN:accIds];

        if(!acclist.isEmpty()){
            for(account acc : acclist){
                acc.Employee_count__c = acc.Employees__r.size();
                
            }
        }
        
        if(!emptobeupdated.isEmpty()){
            update emptobeupdated;
        }
        if(!acclist.isEmpty()){
            update acclist;
        }
    }
    
    public static void updateEmployeecount(list<Employee__c> emplist){
        set<Id> accIds = new set<Id>();
        if(!emplist.isEmpty()){
            for(employee__c emp : emplist){
                if(emp.Account__c != null){
                    accIds.add(emp.Account__c);
                }
            }
        }
        
        list<Account> acclist = [Select id, Employee_count__c,
                                 (Select id from Employees__r)
                                from Account where ID IN:accIds];
        
        if(!acclist.isEmpty()){
            for(account acc : acclist){
                acc.Employee_count__c = acc.Employees__r.size();
                
            }
        }
        
        if(!acclist.isEmpty()){
            update acclist;
        }
        
       }

}