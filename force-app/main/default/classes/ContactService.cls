public class ContactService {
    
    public List<Account> createTwoAccounts(){
        List<Account> accounts = new List<Account>();
        
        Account account1 = new Account();
        account1.Name = 'Test1236';
        account1.AnnualRevenue = 100000;
        accounts.add(account1);
        
        Account account2 = new Account();
        account2.Name = 'Test4568';
        account2.AnnualRevenue = 200000;
        accounts.add(account2);
        
        return accounts;
    }

}