public class ListsPractice {
    
    public static Integer getRandomNumberInRange(Integer n , Integer m){
        Integer randomNumber = n + (Integer)(Math.random() * ((m - n) + 1));
        return randomNumber;
    }
    
    public String getRandomStringFromList(List<String> availableValues){
        if(availableValues.isEmpty()){
            return '';
        } 
        Integer listSize = availableValues.size() - 1;
        Integer randomNumber = Integer.valueof((Math.random() * listSize));
        String randomString= availableValues.get(randomNumber);
        
        return randomString;
        
    }
    
    public List<String> mergeTwoStringListsAndSort(List<String> List1, List<String> List2){
        List<String> combinedList =  new List<String>();
        combinedList.addAll(List1);
        combinedList.addAll(List2);
        combinedList.sort();
        return combinedList;
    }
    
    public List<String> getFirstNCharacters (String inputString , Integer n){
        List<String> finalList = new List<String>();
        if(n > inputString.length()){
            finalList.add(inputString);
        } else {
            List<String> ls = inputString.split('');
            finalList.add(ls.get(n));           
        }
        System.debug('The list is ' + finalList);
        return finalList;       
    }
    
    public Integer sumList(List<Integer> sumIntegers){
        Integer sum=0;
        for (Integer a : sumIntegers){
            sum += a;
        }
        return sum;
    }
    
    public Integer getSmallest(List<Integer> listOfElements){
        Integer smallest;
        for(Integer i=0; i<listOfElements.size();i++){
            if(smallest==NULL || listOfElements.get(i) < smallest){
                smallest = listOfElements.get(i);
            }
        }
        return smallest;
    }
    
    public List<Integer> createNIntegers(Integer n){
        List<Integer> randomNumbers = new List<Integer>();
        for(Integer i=0; i<n; i++){
            randomNumbers.add(Integer.valueof((Math.random() * n)));    
        }
        return randomNumbers;
        
    }
    
}