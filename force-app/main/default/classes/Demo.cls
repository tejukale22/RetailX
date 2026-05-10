public class Demo {
    public Demo(){
        system.debug('Inside constructor');
    }
    
    public static void method1(){
       map<integer, string> intTostrMap1 = new map<integer, string>();
       //map<string, string> strTostrMap = new map<string, string>();
     //  map<integer, string> intTostrMap2 = new map<integer, string>();
        
        //intTostrMap1.put(1,'One');
        //intTostrMap1.put(2,'Two');
        
        System.debug('integer to string map key-value is >>> ' +intTostrMap1);

        
        if(!intTostrMap1.isEmpty()){
            System.debug('true');
            }
        else{
            System.debug('false'); 
        }
        
            
      
     	 
    }
    

}