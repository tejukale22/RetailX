@isTest
private class TaskUtilityTest {
    
    @isTest
    private static void taskpriorityNormaltest(){
        
        String p = TaskUtility.taskPriority('NY');
        System.assertEquals('Normal',p,'Result are incorrect');
    }
	@isTest
     private static void taskpriorityNULLtest(){
        
        String p = TaskUtility.taskPriority('INDIA');
        System.assertEquals(null,p,'Result are incorrect');
    }
    @isTest
     private static void taskpriorityHightest(){
        
        String p = TaskUtility.taskPriority('CA');
        System.assertEquals('High',p,'Result are incorrect');
    }
}