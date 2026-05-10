@isTest
public class UpdateAccountParentTest {

    @testSetup
    static void setup(){
        List<Account> acclist = new List<Account>();
        acclist.add(new Account(Name = 'Parent'));
        
        for(integer i = 0; i<100; i++){
            acclist.add(new Account(Name = 'Test Account' +i));
        }
        insert acclist;
    }  
        @isTest
        private static void testQueueable(){
            Id parentId = [select Id from Account where Name = 'Parent'][0].id;
            
            List<Account> acclist = [Select id, Name from Account Where Name Like 'Test Account%'];
            
            UpdateAccountParent Updatejob = new UpdateAccountParent(acclist, parentId);
            
           Test.startTest();
            system.enqueueJob(Updatejob);
            Test.stopTest();
          
            system.assertEquals(100,[Select count() from Account where parentId = :parentId]);
            
        }
    }