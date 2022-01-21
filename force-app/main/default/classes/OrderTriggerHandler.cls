public with sharing class OrderTriggerHandler {
    
    List<Order> newRecords {get;set;}
    List<Order> oldRecords {get;set;}
    Map<Id, Order> newMap {get;set;}
    Map<Id, Order> oldMap {get;set;}

    public OrderTriggerHandler(
        List<Order> newRecords, 
        List<Order> oldRecords,
        Map<Id, Order> newMap,
        Map<Id, Order> oldMap
    ) {
        this.newRecords = newRecords;
        this.oldRecords = oldRecords;
        this.newMap = newMap;
        this.oldMap = oldMap;
    }

    public void afterUpdate(){
        List<OrderItem> updatedOrderItemList = OrderHelper.checkRecalcItems(this.oldMap, this.newMap);
        update updatedOrderItemList;
    }
}
