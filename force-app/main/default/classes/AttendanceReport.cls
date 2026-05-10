public class AttendanceReport {
    
    public static Integer NumberofLearningDay(Map<String, Boolean> weeklog){
        
        Integer numberoflearning = 0;
        for(string weekday : weeklog.keySet()){
            Boolean currentDayStatus = weekLog.get(weekday);
            if(currentDayStatus){
                numberoflearning++;
            }
        }
        return numberoflearning;
    }

}