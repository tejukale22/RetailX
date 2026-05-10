trigger EmployeeTrigger on Employee__c (before delete , after delete, after undelete) {
    
    if(Trigger.isdelete){
        if(Trigger.isbefore){
            EmployeeTriggerHandler.validateEmployeeActive(Trigger.old);
        }else if(Trigger.isafter){
            EmployeeTriggerHandler.updateEmployeecount(Trigger.old);
        }
    }
    
    if(Trigger.isundelete){
        EmployeeTriggerHandler.undeleteEmployee(Trigger.new);
    }
	
}