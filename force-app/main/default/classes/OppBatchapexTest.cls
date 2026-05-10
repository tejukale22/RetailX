@isTest
public class OppBatchapexTest {
	@isTest
    private static void testBatchclass(){
        List<opportunity> oppList = new List<opportunity>();
        
        for(integer i =0; i<200; i++){
            oppList.add(
            new opportunity(Name='test' +i, stageName = 'prospecting',closeDate = system.today()));
        }
        insert oppList;
        
        Test.startTest();
        OppBatchapex Bapex = new OppBatchapex();
        Id batchId = Database.executeBatch(Bapex, 200);
        Test.stopTest();
        
        List<opportunity> updateopps = [select id from opportunity where leadsource = 'web'];
        system.assertEquals(200, updateopps.size());
        
    }
        
   }