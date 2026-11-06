// Pages through all bills, then totals the amounts owed per supplier.

import ballerina/io;
import ballerinax/apideck.accounting;

configurable string apiKey = ?;
configurable string consumerId = ?;
configurable string appId = ?;

public function main() returns error? {
    accounting:Client apideck = check new ({auth: {token: apiKey}});

    map<decimal> totals = {};
    int billCount = 0;
    string? cursor = ();

    // Step 1: follow the cursor until the last page
    while true {
        accounting:GetBillsResponse page = check apideck->listBills(
            {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId},
            cursor = cursor, 'limit = 100);
        foreach accounting:Bill bill in page.data {
            billCount += 1;
            string supplier = bill?.supplier?.displayName ?: "Unknown supplier";
            totals[supplier] = (totals[supplier] ?: 0d) + (bill?.total ?: 0d);
        }
        cursor = page.meta?.cursors?.next;
        if cursor is () {
            break;
        }
    }

    // Step 2: print the summary
    io:println("Bills read: ", billCount);
    foreach [string, decimal] [supplier, total] in totals.entries() {
        io:println(supplier, ": ", total);
    }
}
