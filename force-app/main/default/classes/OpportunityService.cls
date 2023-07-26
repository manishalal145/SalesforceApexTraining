public class OpportunityService {
    
    public Decimal calculateAmount (Opportunity op1, Opportunity op2){
        Decimal sum = op1.Amount + op2.Amount;
        return sum;
    }
    
    public void insertOpportunity(Opportunity op3){
        insert op3;
    }
    
    public Opportunity softMerge(Opportunity op4, Opportunity op5){
       
        Opportunity returnOpportunity = new Opportunity();
        
        returnOpportunity.AccountId = op4.AccountId;
        returnOpportunity.Amount = op4.Amount;
        returnOpportunity.CloseDate = op4.CloseDate;
       
        returnOpportunity.Name = op5.Name;
        returnOpportunity.Probability = op5.Probability;
        returnOpportunity.StageName = op5.StageName;
        
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
    
    public Boolean isOpen(Opportunity Newopp){
        Boolean retVal;
        
        if(Newopp.StageName == 'Prospecting' || Newopp.StageName =='Qualification'){
            retVal=true;    
        }
        else{
            retVal=false;
        }
        return retVal;    
    }
    
    public Decimal calculateProbability(Opportunity NOpp, Opportunity newOpp){
        Decimal avg;
        
        avg = (NOpp.Probability + newOpp.Probability)/2;
        return avg;     
    }
    
    public String getOpportunityDetails(Opportunity opport){
        String OppDetails;
        OppDetails = opport.Name + opport.StageName + opport.Amount;
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
         	 
        }
        else if(name == null || stageName == null || closeDate == null || amount == null || accountId == null){
          	a.Name = 'NullAccount';
            a.StageName ='Qualification';
            a.CloseDate = System.today();
            a.Amount = 3000;
            a.AccountId = '0018b00002DV1FeAAL';
        }
        return a;
        
    }
    
    public Opportunity createNewOpportunity(){
        Opportunity b =new Opportunity();
        
        b.Name = 'NullOpportunity';
        b.CloseDate = System.today();
        b.StageName = 'Qualification';
        
        return b;
    }
    
    public List<Opportunity> createOpportunities(Integer n){
        List<Opportunity> opportunities = new List<Opportunity>();
        
        for(Integer i = 0; i < n; i++){
            Opportunity opportunity1 = new Opportunity();
            opportunity1.Amount = ListsPractice.getRandomNumberInRange(1000 , 300000);
            opportunities.add(opportunity1);   
        }

        return opportunities;    
    }
    
    public Double calculateTotalRevenue(List<Opportunity> opportunities){
        Double totalRevenue = 0.0;

        for(Opportunity opportunity : opportunities){
            totalRevenue += opportunity.Amount;
        }

        return totalRevenue;
    }
    
    public List<Opportunity> filterOpportunitiesByStage(List<Opportunity> opportunities, String stageName){
        List<Opportunity> newOpportunities = new List<Opportunity>();

        for(Opportunity opportunity : opportunities){
            if(stageName == opportunity.StageName){
                newOpportunities.add(opportunity);
            }
        }

        return newOpportunities;    
    }
    
    public List<Opportunity> filterClosedWonOpportunities(List<Opportunity> opportunities){
        return filterOpportunitiesByStage(opportunities, 'Closed Won');    
    }
}