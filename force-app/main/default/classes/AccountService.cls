public class AccountService {
    
    public Account createAccount() {
        
        Account account = new Account();
        account.Name = 'Germany1';
        account.Industry = 'Technology' ;
        account.Type = 'Technology Partner';
        account.AnnualRevenue = 50000;
        account.BillingCity = 'Scotland';
        
        return account;
    }
    
    public void insertAccount(Account account){
        insert account;
    }
    
    public String getAccountSummary(Account account){
        return account.Name + account.Type + account.AnnualRevenue;     
    }
    
    public Boolean isTestAccount(Account acc){
        Boolean retVal;
        if (acc.Name.contains('Test')){
            retVal = true;
            System.debug('The account name contains Test');
        } else {
            retVal = false;
            System.debug('The account name doesnt contain Test');
        }
        return retVal; 
    }
    
    public String printAccountTier(Account account){
        String tier = 'VIP Tier';
        
        if(account.AnnualRevenue == 0){
            tier = 'No Tier';   
        } else if(account.AnnualRevenue < 50000){
            tier = 'Silver Tier';
        } else if(account.AnnualRevenue < 300000){
            tier = 'Golden Tier';
        } 
        
        return tier;
    }
    
    public Account createNewAccount(String name, String type, String accountNumber){
        
        Account newAcc = new Account();
        newAcc.Name = name;
        newAcc.Type = type;
        newAcc.AccountNumber = accountNumber;
        
        System.debug('The new Account record is: ' + newAcc);
        return newAcc;
        
    }
    

}