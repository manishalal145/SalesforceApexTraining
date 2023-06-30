public class ControlStructures {
    
    public Integer calculateRange(Integer a, Integer b){
        
        Integer sum = 0;
        
        if(a != null && b != null && b > a){
            for (Integer i =a; i <= b; i++){
                sum = sum + i;    
            }
        }else {
            sum =0;
        }
        return sum;
    }
    
    public String reverseString (String originalString){
        
        String reversedString ='';
        for (Integer i = originalString.length(); i > 0; i--) {
            reversedString += originalString.substring(i-1,i);
        }
        
        return reversedString;
    }
    
    public Boolean isPalindrome(String a){
        
        Boolean isPalindrome =true; 
        String reversedString = reverseString(a);
        
        if(a == reversedString){
            System.debug('This is a palindrome' + isPalindrome);
        }else {
            isPalindrome = false;
            System.debug('This is not a palindrome' + isPalindrome);
        }
        return isPalindrome;
    }
    
    public Integer findLetter (String a, String b){
        
        Integer position;
        
        for(Integer i = a.length();i <= a.length(); i++){
            position = a.indexOfIgnoreCase(b);    
        }   
        return position;    
    }

    public void displayFibonacci (Integer n){
        Integer currentVal = 0;
        List <Integer> sequence = new List <Integer> {0,1};
        
        for(Integer i = 1; i <= n; i++)
        {
            currentVal = sequence.get(i) + sequence.get(i-1);
            sequence.add(currentVal);
        }
        return sequence.get(n - 1);
    }
    
    
    
}