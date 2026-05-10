public class MyFirstDemo {
    Public MyFirstDemo(){
        system.debug('inside a constructor');
    }
    
    public void method1(){
        list<integer> Mylist = New list<Integer>();
        //set<integer> Setlist2 = New set<integer>();
        //list<integer> Mylist2 = New list<Integer>();
            
        Mylist.add(1);
        Mylist.add(4);
        Mylist.add(3);
        Mylist.add(2);
        
        
        //Mylist.add(1,10);
        system.debug('Mylist = ' + Mylist);
        
        //Setlist2.add(11);
        //Setlist2.add(12);
        
        // system.debug('Setlist2 = ' + Setlist2);
        
              Mylist.sort();
        
        system.debug('Mylist size = ' + Mylist);
        
        }
}