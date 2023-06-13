public class OpportunityService {
    
    public Decimal calculateAmount (Opportunity op1, Opportunity op2){
        Decimal sum = op1.Amount + op2.Amount;
        System.debug('sum:: ' + sum);
        return sum;
    }
    
    public void insertOpportunity(Opportunity op3){
        insert op3;
        System.debug('The inset record record is :: ' + op3);
    }
    
    public Opportunity softMerge(Opportunity op4, Opportunity op5){
       
        Opportunity returnOpportunity = new Opportunity();
        
        returnOpportunity.AccountId = op4.AccountId;
        returnOpportunity.Amount = op4.Amount;
        returnOpportunity.CloseDate = op4.CloseDate;
       
        returnOpportunity.Name = op5.Name;
        returnOpportunity.Probability = op5.Probability;
        returnOpportunity.StageName = op5.StageName;
        
        System.debug('The Merged result is:: ' + returnOpportunity);
        return returnOpportunity;      
    }
    
    public Opportunity createOpportunityWithAccount(Account a1){
        
        Opportunity newOpp = new Opportunity();
        
        newOpp.AccountId = a1.ID;
        newOpp.Amount = 1000;
        newOpp.CloseDate = System.today();
        newOpp.Name = 'New German Car';
        newOpp.Probability = 78;
        newOpp.StageName = 'Negotiation/Review';
        
        System.debug('The newOpp is :: ' + newOpp);
        return newOpp;
    }
    
    public Boolean isOpen(Opportunity Newopp){
        Boolean retVal;
        
        if(Newopp.StageName == 'Prospecting' || Newopp.StageName =='Qualification'){
            retVal=true;    
        }
        else{
            retVal=false;
        }
        System.debug('The isOpen :' + retVal);
        return retVal;    
    }
    
    public Decimal calculateProbability(Opportunity NOpp, Opportunity newOpp){
        Decimal avg;
        
        avg = (NOpp.Probability + newOpp.Probability)/2;
        System.debug('The average probability: ' + avg);
        return avg;     
    }
    
    public String getOpportunityDetails(Opportunity opport){
        String OppDetails;
        
        OppDetails = opport.Name + opport.StageName + opport.Amount;
        System.debug('The details are: ' + OppDetails);
        return OppDetails;
    }
    
    public void doubleAmount(Opportunity NewOpport){
        NewOpport.Amount = NewOpport.Amount * 2;
        
    }
    
    public Opportunity createNewOpportunity (String name, String stageName, Date closeDate, Decimal amount,Id accountId){
        opportunity a = new Opportunity();
        
        if(name != null && stageName != null && closeDate != null && amount != null && accountId != null){
         	a.Name = name;
        	a.StageName = stageName;
        	a.CloseDate = closeDate;
        	a.Amount = amount;
        	a.AccountId = accountId;
        
        	System.debug('The new Opportunity record: ' + a);   	 
        }
        else if(name == null || stageName == null || closeDate == null || amount == null || accountId == null){
          	a.Name = 'NullAccount';
            a.StageName ='Qualification';
            a.CloseDate = System.today();
            a.Amount = 3000;
            a.AccountId = '0018b00002DV1FeAAL';
            
            System.debug('The new null Opportunity record: ' + a);
        }
        return a;
        
    }
    
    public Opportunity createNewOpportunity(){
        Opportunity b =new Opportunity();
        
        b.Name = 'NullOpportunity';
        b.CloseDate = System.today();
        b.StageName = 'Qualification';
        
        System.debug('The opportunirt is :: ' + b);
        return b;
    }
    
    
}