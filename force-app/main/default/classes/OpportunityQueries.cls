public class OpportunityQueries {
    
    public List<Opportunity> queryOpportunitiesByStage (String stage){
        List<Opportunity> oppList = [SELECT Id,Name,StageName FROM Opportunity WHERE StageName =: stage ];
        return oppList;    
    }
    
    public List<Opportunity> queryOpportunitiesByAmountAndStage(Integer amount , String stage){
        List<Opportunity> opportunityList = [SELECT Id, Name, Amount, StageName FROM Opportunity WHERE Amount >=: amount AND StageName =: stage];
        return opportunityList;
    }
    
    public List<Opportunity> queryOpportunitiesByCreatedDate(Date startDate , Date endDate){
        List<Opportunity> opportunityList = [SELECT Id, Name, CreatedDate FROM Opportunity WHERE CreatedDate <=: startDate 
                                             AND CreatedDate >=: endDate];
        return opportunityList;    
    }
    
    public List<Opportunity> queryOpportunitiesByAmount(Integer amount){
        List<Opportunity> opportunityList = [SELECT Id, Name, Amount FROM Opportunity WHERE Amount >=: amount];
        return opportunityList;  
    }
    
    public List<Opportunity> queryOpportunitiesByCloseDate(Date closeDate){
        List<Opportunity> opportunityList = [SELECT Id, Name, CloseDate FROM Opportunity WHERE CloseDate =: closeDate];
        return opportunityList;    
    }
    
    public void changeProbabiltyBasedOnAmount(Integer amount){
        List<Opportunity> opportunityList = [SELECT Id, Name, Probability, Amount FROM Opportunity WHERE Amount <: amount];
        for(Opportunity o : opportunityList){
            o.Probability = o.Probability/2;
        }
        update opportunityList;
    }   
}