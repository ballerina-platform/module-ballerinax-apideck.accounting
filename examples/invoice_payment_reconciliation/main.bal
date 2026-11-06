// Issues an invoice for an existing customer, records the payment received against it and reads the invoice back.

import ballerina/io;
import ballerinax/apideck.accounting;

configurable string apiKey = ?;
configurable string consumerId = ?;
configurable string appId = ?;
configurable string customerId = ?;
configurable string invoiceDate = ?;
configurable string dueDate = ?;
configurable decimal amount = ?;
configurable boolean createRecords = false;

public function main() returns error? {
    accounting:Client apideck = check new ({auth: {token: apiKey}});

    // Step 1: confirm that the customer exists
    accounting:GetCustomerResponse customer = check apideck->getCustomer(customerId,
        {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    io:println("Customer: ", customer.data?.displayName ?: customerId);

    if !createRecords {
        io:println("Set createRecords = true in Config.toml to create the invoice and payment.");
        return;
    }

    // Step 2: create the invoice
    accounting:CreateInvoiceResponse created = check apideck->createInvoice(
        {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId},
        {
            customer: {id: customerId},
            invoiceDate,
            dueDate,
            lineItems: [{description: "Consulting services", quantity: 1, unitPrice: amount}]
        });
    string? createdId = created.data.id;
    if createdId is () {
        return error("The invoice was created without an id");
    }
    string invoiceId = createdId;
    io:println("Invoice created: ", invoiceId);

    // Step 3: record the payment received for the invoice
    accounting:CreatePaymentResponse payment = check apideck->createPayment(
        {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId},
        {
            transactionDate: dueDate,
            totalAmount: amount,
            customer: {id: customerId},
            allocations: [{id: invoiceId, 'type: "invoice", amount}]
        });
    io:println("Payment recorded: ", payment.data.id);

    // Step 4: read the invoice back to check its status
    accounting:GetInvoiceResponse invoice = check apideck->getInvoice(invoiceId,
        {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    io:println("Invoice status: ", invoice.data?.status ?: "unknown");
}
