trigger OrderTrigger on Order (after insert) {

    OrderTriggerHandler handler = new OrderTriggerHandler(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);

    switch on Trigger.operationType {
        when AFTER_UPDATE {
            handler.afterUpdate();
        }
    }
}