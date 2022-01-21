trigger PriceMarginTrigger on PriceMargin__c (before insert) {

    PriceMarginTriggerHandler handler = new PriceMarginTriggerHandler(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);

    switch on Trigger.operationType {
        when BEFORE_INSERT {
            handler.beforeInsert();
        }
    }
}