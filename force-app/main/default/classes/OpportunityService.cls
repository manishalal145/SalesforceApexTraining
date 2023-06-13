public class OpportunityService {
    
    public Decimal calculateAmount (Opportunity firstOpportunity, Opportunity secondOpportunity){
        Decimal sum = firstOpportunity.Amount + secondOpportunity.Amount;
        return sum;
    }
    
    public void insertOpportunity(Opportunity opportunity){
        insert opportunity;
    }
    
    public Opportunity softMerge(Opportunity firstOpportunity, Opportunity secondOpportunity){
        Opportunity returnOpportunity = new Opportunity();
        
        returnOpportunity.AccountId = firstOpportunity.AccountId;
        returnOpportunity.Amount = firstOpportunity.Amount;
        returnOpportunity.CloseDate = firstOpportunity.CloseDate;
       
        returnOpportunity.Name = secondOpportunity.Name;
        returnOpportunity.Probability = secondOpportunity.Probability;
        returnOpportunity.StageName = secondOpportunity.StageName;
        
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
        
        return newOpp;
    }
    
    public Boolean isOpen(Opportunity opportunity){
        return (opportunity.StageName == 'Prospecting') || (opportunity.StageName =='Qualification');    
    }
    
    public Decimal calculateProbability(Opportunity firstOpportunity, Opportunity secondOpportunity){        
        return (firstOpportunity.Probability + secondOpportunity.Probability) / 2.0;   
    }
    
    public String getOpportunityDetails(Opportunity opportunity){        
        return opportunity.Name + opportunity.StageName + opportunity.Amount;
    }
    
    public void doubleAmount(Opportunity opportunity){
        opportunity.Amount = opportunity.Amount * 2;
    }
    
    /**
     *  if(name != null && stageName != null && closeDate != null && amount != null && accountId != null){
         	a.Name = name;
        	a.StageName = stageName;
        	a.CloseDate = closeDate;
        	a.Amount = amount;
        	a.AccountId = accountId;
        } else if(name == null || stageName == null || closeDate == null || amount == null || accountId == null){
          	a.Name = 'NullAccount';
            a.StageName ='Qualification';
            a.CloseDate = System.today();
            a.Amount = 3000;
            a.AccountId = '0018b00002DV1FeAAL';
        }
     */
    public Opportunity createNewOpportunity(String name, String stageName, Date closeDate, Decimal amount, Id accountId){
        Opportunity a = new Opportunity();

        if(name == null) {
            name = 'Default Account Name';
        }

        if(stageName == null) {
            stageName = 'Stage Name';
        }
        // ..

        a.Name = name;
        a.StageName = stageName;
        // ...       

        return a;
    }
    
    public Opportunity createNewOpportunity(){
        Opportunity b = new Opportunity();
        
        b.Name = 'NullOpportunity';
        b.CloseDate = System.today();
        b.StageName = 'Qualification';
        
        System.debug('The opportunirt is :: ' + b);
        return b;
    }
    
    
}