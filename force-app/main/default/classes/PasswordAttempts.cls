public class PasswordAttempts {

    public static string correctPassword = 'Salesforce_Makes_Sence';
    public static integer attemptcounter = 1;
    
    public static void PasswordAttempcase(){
        String finalAns = '';
		finalAns = handlecorresctanswer('SalesforceMakesSence');       
        System.debug(finalAns);
        finalAns = handlecorresctanswer('SalesforcehMakesSence');       
        System.debug(finalAns);
        finalAns =  handlecorresctanswer('SalesforcedMakesSence');       
        System.debug(finalAns);
        finalAns =  handlecorresctanswer('SalesforcereMakesSence');       
        System.debug(finalAns);
    }
    
    public static String handlecorresctanswer(String PasswordInput){
        if(PasswordInput != correctPassword){
            if(attemptcounter > 3){
                return 'Maximum Attempt are reached. Your Account is locked.';
            }
            attemptcounter++;
            return 'failure';
        }
        else 
        {
            return 'Success';
        }
    }
}