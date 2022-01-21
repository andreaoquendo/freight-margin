trigger OrderItemTrigger on OrderItem (before insert) {

    OrderItemTriggerHandler handler = new OrderItemTriggerHandler(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);

    switch on Trigger.operationType {
        when BEFORE_INSERT {
            handler.beforeInsert();
        }
    }
}