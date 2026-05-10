public class Constructor {
    
    public integer age;
    public integer salary;
    public string name;
    public string Department;
    
    
    public Constructor(string name, integer age){
        this.age = age;
        this.name = name;
    }
    public Constructor(string name, integer age,string Department, integer salary){
        this.age = age;
        this.name = name;
        this.salary = salary;
        this.Department = Department;
    }
    
    public static void createEmployee(){
        
        Constructor con = new Constructor('Tejasvi', 28, 'Sales', 50000);
        
        System.debug('Name '+ con.name);
        System.debug('Age'+ con.age);
        System.debug('Department '+ con.Department);
        System.debug('Salary '+ con.salary);
        
    }
    
}