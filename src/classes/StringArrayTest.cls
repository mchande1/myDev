public class StringArrayTest {
    //Static method to generate list of strings
    public static List<String> generateStringArray(Integer i){
        List<String> stringList = new List<String>();
        for(Integer j=0; j<i; j++){
            String indvidualString = 'Test ' + j;
            stringList.add(indvidualString);
        }
        return stringList;
    }
}