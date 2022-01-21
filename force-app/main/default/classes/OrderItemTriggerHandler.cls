public with sharing class OrderItemTriggerHandler {
    
    List<OrderItem> newRecords {get;set;}
    List<OrderItem> oldRecords {get;set;}
    Map<Id, OrderItem> newMap {get;set;}
    Map<Id, OrderItem> oldMap {get;set;}

    public OrderItemTriggerHandler(
        List<OrderItem> newRecords, 
        List<OrderItem> oldRecords,
        Map<Id, OrderItem> newMap,
        Map<Id, OrderItem> oldMap
    ) {
        this.newRecords = newRecords;
        this.oldRecords = oldRecords;
        this.newMap = newMap;
        this.oldMap = oldMap;
    }

    public void beforeInsert(){
        OrderItemHelper.checkError(this.newRecords);
        OrderItemHelper.calcPrice(this.newRecords);
    }
}
