@isTest
public class TestClass {

    @isTest
    public static void testaddnumbers()
    {
        Integer result = MathOperations.addnumbers(5,3);
        system.assertEquals(8,result);
    }
    @isTest
    public static void testSubtraction()
    {
        Integer result = MathOperations.Subtraction(5,3);
        system.assertEquals(2,result);
    }
    
}