public class AllMyVariables {
    
    public Boolean isThisCorrect = true;
   public  Account myAccRecord = new Account();
    /*public Date todaysDate = System.today();

    /**
     * Method Name : CalculateDiscountAmount
     * Method Params : Sellingprice,Discount
     * Description : Calculate the discount 
     * Method Return : Final Value
     */
    public static decimal CalculateDiscountAmount (decimal sellingprice, Integer Discount){
        decimal finalPrice = sellingprice-(sellingprice * Discount)/100;
        System.Debug('Final Price is' + finalPrice);
        return finalPrice;
    }
    /**
     * Method Name : CalculateAge
     * Method Params : dateofBirth
     * Description : Calculate the age 
     * Method Return : age
     */
 public static Integer calculateAge(Date dateOfBirth) {

    if (dateOfBirth == null) {
        return null;
    }

    Date today = Date.today();
    Integer age = today.year() - dateOfBirth.year();

    if (today.month() < dateOfBirth.month() ||
       (today.month() == dateOfBirth.month() && today.day() < dateOfBirth.day())) {
        age--;
    }

    System.debug('Age of the person: ' + age);

    return age;
}
}