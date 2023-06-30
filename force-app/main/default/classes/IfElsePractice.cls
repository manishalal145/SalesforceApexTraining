public class IfElsePractice {
    
    public void printSign(Integer a){
        if(a>0){
            System.debug('Positive');
        }
        else if(a==0){
            System.debug('Zero');
        }
        else if (a<0){
            System.debug('Negative');
        }
      }
    
    public void hasNLength(String input , Integer n){
        if(input.length()<=n){
            System.debug('Valid');
        }
        else{
            System.debug('Invalid');
        }     
    }
    
    public Boolean hasExactLength(String input , Integer n){     
        
        Boolean retVal = input.length()==n;
        System.debug('retVal :: ' + retVal);
        return retVal;
        
    }
    
    public Integer maximumNumber(Integer number1 , Integer number2){
        if (number1> number2){
            System.debug('Number 1 is bigger than number 2');
            return number1;
        }
        else{
            System.debug('Number 2 is bigger than number 1');
            return number2;
        }
    }
    
    public Integer maximumNumber(Integer number1 , Integer number2 , Integer number3){
       Integer result = math.max(math.max(number1,number2),math.max(number2,number3));
       return result;
    }
    
    public Boolean isEven(Integer a){
        Boolean retVal;
        
        if(math.mod(a, 2) == 0){
            system.debug('Given number is even');
            return retVal = true;
		}
        else{
            system.debug('Given number is odd');
            return retVal = false;	
        }
    }
    
    public Decimal convertTemperature(Decimal temperature, String unit){
        
        if(unit == 'F'){
            temperature = (temperature * 9/5) + 32;    
           }
        else if(unit =='C'){
            temperature = (temperature - 32) * 5/9;
        }
        else{
            temperature =0;  
        }
        
		System.debug('Temperature is :' + temperature);
		return temperature;        
    }
    
}