/**
 * @ Author: Ridowan Ahmed(ridowan.ahmed.dev@gmail.com)
 * @ Create Time: 2021-10-26 09:11:39
 * @ Modified by: Ridowan Ahmed (ridowan.dev@gmail.com)
 * @ Modified time: 2021-10-26 09:44:25
 * @ Description:
 */

trigger AccountAddressTrigger on Account (before insert, before update) {
    for(Account acc: Trigger.New) {
        if(acc.Match_Billing_Address__c) {
            acc.ShippingPostalCode = acc.BillingPostalCode;
            System.debug(JSON.serializePretty(acc));
        }
    }
}