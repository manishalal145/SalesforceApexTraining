public class AccountService {
    
    public Account createAccount(){
        
        Account acc = new Account();
        acc.Name = 'Germany1';
        acc.Industry = 'Technology' ;
        acc.Type = 'Technology Partner';
        acc.AnnualRevenue = 50000;
        acc.BillingCity = 'Scotland';
        
        System.debug('The account is: ' + acc);
        return acc;
    }
    
    public void insertAccount(Account acc){
        insert acc;
    }
    
    public String getAccountSummary(Account acc){
        
        String ConAcc = acc.Name + acc.Type + acc.AnnualRevenue;
        System.debug('The account summary is: ' + ConAcc);
        return ConAcc;     
    }
    
    public Boolean isTestAccount(Account acc){
        Boolean retVal;
        if (acc.Name.contains('Test')){
            retVal=true;
            System.debug('The account name contains Test');
        }
        else{
            retVal = false;
            System.debug('The account name doesnt contain Test');
        }
        return retVal; 
    }
    
    public String printAccountTier(Account acc){
        String Tier;
        
        if(acc.AnnualRevenue ==0){
            Tier = 'No Tier';   
        }
        else if(acc.AnnualRevenue < 50000){
            Tier = 'Silver Tier';
        }
        else if(acc.AnnualRevenue >= 50000 && acc.AnnualRevenue < 300000){
            Tier = 'Golden Tier';
        }
        else if(acc.AnnualRevenue >= 300000){
            Tier = 'VIP Tier';
        }
        
        System.debug('The Tier is ' + Tier);
        return Tier;
    }
    
    public Account createNewAccount(String name , String type , String accountNumber){
        
        Account newAcc = new Account();
        newAcc.Name = name;
        newAcc.Type = type;
        newAcc.AccountNumber = accountNumber;
        
        System.debug('The new Account record is: ' + newAcc);
        return newAcc;
        
    }
    

}