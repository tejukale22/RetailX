@isTest
private class TemparatureTest {
	@isTest
    private static void warmTempTest(){
        Decimal c = Temparature.FtoC(70);
        System.assertEquals(21.11,c,'Results are incorrect');
    }
    
    private static void coldTempTest(){
        Decimal c = Temparature.FtoC(32);
        System.assertEquals(0,c,'Results are incorrect');
    }
}