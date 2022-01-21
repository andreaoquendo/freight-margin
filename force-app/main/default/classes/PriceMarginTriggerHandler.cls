public with sharing class PriceMarginTriggerHandler {

    List<PriceMargin__c> newRecords {get;set;}
    List<PriceMargin__c> oldRecords {get;set;}
    Map<Id, PriceMargin__c> newMap {get;set;}
    Map<Id, PriceMargin__c> oldMap {get;set;}

    public PriceMarginTriggerHandler(
        List<PriceMargin__c> newRecords, 
        List<PriceMargin__c> oldRecords,
        Map<Id, PriceMargin__c> newMap,
        Map<Id, PriceMargin__c> oldMap
    ) {
        this.newRecords = newRecords;
        this.oldRecords = oldRecords;
        this.newMap = newMap;
        this.oldMap = oldMap;
    }

    public void beforeInsert(){
        // Desenvolvimento 1a etapa
        PriceMarginHelper.validateMarginCategory(newRecords);
        
        // Desenvolvimento Cálculo do Score
        PriceMarginHelper.calcScore(newRecords);
    }
}
