public class StringListsPractice {
    
    public String concatenateList(List<String> List1){
        String concatenatedString;
        return concatenatedString = String.join(List1,',');
    }
    
    public List<String> reverseWordsAndOrder(List<String> inputString){
        // To reverse the strings in a list
        List<String> finalList = new List<String>();
        for(Integer i=0; i<inputString.size(); i++){
            finalList.add(inputString.get(i).reverse());    
        }
        
        // To reverse the finalList now
        List<String> reversedList = new List<String>();
        for(Integer i = finalList.size() - 1; i >= 0; i--){
            reversedList.add(finalList.get(i));
        }
        return reversedList;    
    }
    
}