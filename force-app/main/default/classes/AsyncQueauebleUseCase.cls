public class AsyncQueauebleUseCase implements Queueable{
	
    public static void execute(QueueableContext context){
        System.debug('First Queueable context');
    }
    
}