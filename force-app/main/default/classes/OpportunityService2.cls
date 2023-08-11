public class OpportunityService2 {
    
    public static List<Opportunity> createOpportunities(Integer n){
        List<Opportunity> Opportunities = new List<Opportunity>();
        
        for(Integer i=0; i<n; i++){
            Opportunity opportunity1 = new Opportunity();
            opportunity1.Amount = ListsPractice.getRandomNumberInRange(1000 , 300000);
            Opportunities.add(opportunity1);   
        }
        return Opportunities;    
    }
    
    public static Double calculateTotalRevenue(List<Opportunity> Opportunity){
        Double totalRevenue = 0.0;
        for(Integer i=0; i<Opportunity.size(); i++){
            totalRevenue += Opportunity.get(i).Amount;
        }
        return totalRevenue;
    }
    
    public static List<Opportunity> filterOpportunitiesByStage(List<Opportunity> opportunities , String stageName){
        List<Opportunity> newOpportunities = new List<Opportunity>();
        
        for(Integer i =0; i < opportunities.size(); i++){
            if(stageName == opportunities.get(i).StageName){
                newOpportunities.add(opportunities.get(i));
            }
        }
        return newOpportunities;    
    }
    
    public static List<Opportunity> filterClosedWonOpportunities(List<Opportunity> opportunities){
        List<Opportunity> closedWon = new List<Opportunity>();
        for(Integer i=0; i < opportunities.size(); i++){
            if(opportunities.get(i).StageName == 'Closed Won'){
                closedWon.add(opportunities.get(i));
            }   
        }
        return closedWon;    
    }
    
}