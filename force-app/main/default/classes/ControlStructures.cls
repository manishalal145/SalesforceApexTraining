public class ControlStructures {
    
    public Integer calculateRange(Integer firstNumber, Integer secondNumber) {
        if(firstNumber == null || secondNumber == null){
            return 0;
        } 

        Integer min = Math.min(firstNumber, secondNumber);
        Integer max = Math.max(firstNumber, secondNumber);

        Integer sum = 0;

        for (Integer i = min; i <= max; i++) {
            sum += i;    
        }

        return sum;
    }
    
    public String reverseString(String originalString) {
        String reversedString = '';

        for (Integer i = originalString.length(); i > 0; i--) {
            reversedString += originalString.substring(i-1, i);
        }
        
        return reversedString;
    }

    // inputString == reversedString = true -> true
    // inputString == reversedString = false -> false
    public Boolean isPalindrome(String inputString) {        
        return inputString == reverseString(inputString);
    }
    
    //            0123
    // sentence = ABCD
    // substring(0, 1) -> A
    // ...
    // substring(3, 4) -> D
    public Integer findLetter(String sentence, String letter){        
        for(Integer i = sentence.length(); i <= sentence.length(); i++){
            if(sentence.substring(i, i + 1).toLowerCase() == letter.toLowerCase()) {
                return i;
            }
        } 

        return -1;    
    }

    public Integer displayFibonacci(Integer n) {
        Integer currentVal = 0;
        List <Integer> sequence = new List <Integer> {0,1};
        
        for(Integer i = 1; i <= n; i++) {
            currentVal = sequence.get(i) + sequence.get(i-1);
            sequence.add(currentVal);
        }

        return sequence.get(n - 1);
    }
    
    
    
}