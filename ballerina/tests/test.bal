// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;
import ballerina/os;
import ballerina/test;

final boolean isLiveServer = os:getEnv("IS_LIVE_SERVER") == "true";
final string serviceUrl = isLiveServer ? "https://unify.apideck.com/accounting" : "http://localhost:9090";
final string apiKey = isLiveServer ? os:getEnv("APIDECK_API_KEY") : "test_api_key";
final string consumerId = isLiveServer ? os:getEnv("APIDECK_CONSUMER_ID") : "test_consumer";
final string appId = isLiveServer ? os:getEnv("APIDECK_APP_ID") : "test_app";

final Client apideck = check new ({auth: {token: apiKey}, httpVersion: http:HTTP_1_1}, serviceUrl);


@test:Config {groups: ["live_tests", "mock_tests"]}
function testListInvoices() returns error? {
    GetInvoicesResponse response = check apideck->listInvoices({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListBills() returns error? {
    GetBillsResponse response = check apideck->listBills({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListCustomers() returns error? {
    GetCustomersResponse response = check apideck->listCustomers({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListSuppliers() returns error? {
    GetSuppliersResponse response = check apideck->listSuppliers({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListPayments() returns error? {
    GetPaymentsResponse response = check apideck->listPayments({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListLedgerAccounts() returns error? {
    GetLedgerAccountsResponse response = check apideck->listLedgerAccounts({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListJournalEntries() returns error? {
    GetJournalEntriesResponse response = check apideck->listJournalEntries({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListTaxRates() returns error? {
    GetTaxRatesResponse response = check apideck->listTaxRates({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListBankAccounts() returns error? {
    GetBankAccountsResponse response = check apideck->listBankAccounts({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testCreateInvoice() returns error? {
    CreateInvoiceResponse response = check apideck->createInvoice({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {});
    test:assertTrue(response.data.id != "");
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testCreateBill() returns error? {
    CreateBillResponse response = check apideck->createBill({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {});
    test:assertTrue(response.data.id != "");
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testCreateCustomer() returns error? {
    CreateCustomerResponse response = check apideck->createCustomer({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {displayName: "Acme Ltd"});
    test:assertTrue(response.data.id != "");
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testCreateSupplier() returns error? {
    CreateSupplierResponse response = check apideck->createSupplier({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {displayName: "Northwind Supplies"});
    test:assertTrue(response.data.id != "");
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testCreatePayment() returns error? {
    CreatePaymentResponse response = check apideck->createPayment({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {transactionDate: "2026-03-10", totalAmount: 100.0d});
    test:assertTrue(response.data.id != "");
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testCreateJournalEntry() returns error? {
    CreateJournalEntryResponse response = check apideck->createJournalEntry({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {});
    test:assertTrue(response.data.id != "");
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testGetInvoice() returns error? {
    GetInvoiceResponse response = check apideck->getInvoice("id_1", {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertEquals(response.statusCode, 200);
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testGetBill() returns error? {
    GetBillResponse response = check apideck->getBill("id_1", {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertEquals(response.statusCode, 200);
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testGetCustomer() returns error? {
    GetCustomerResponse response = check apideck->getCustomer("id_1", {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertEquals(response.statusCode, 200);
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testGetSupplier() returns error? {
    GetSupplierResponse response = check apideck->getSupplier("id_1", {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertEquals(response.statusCode, 200);
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testGetLedgerAccount() returns error? {
    GetLedgerAccountResponse response = check apideck->getLedgerAccount("id_1", {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertEquals(response.statusCode, 200);
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testGetTaxRate() returns error? {
    GetTaxRateResponse response = check apideck->getTaxRate("id_1", {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertEquals(response.statusCode, 200);
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testUpdateInvoice() returns error? {
    UpdateInvoiceResponse response = check apideck->updateInvoice("id_1", {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {});
    test:assertEquals(response.data.id, "id_1");
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testUpdateCustomer() returns error? {
    UpdateCustomerResponse response = check apideck->updateCustomer("id_1", {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {displayName: "Acme Ltd"});
    test:assertEquals(response.data.id, "id_1");
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testDeleteInvoice() returns error? {
    CreateInvoiceResponse created = check apideck->createInvoice({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {});
    DeleteInvoiceResponse response = check apideck->deleteInvoice(<string>created.data.id, {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertEquals(response.data.id, created.data.id);
}

@test:Config {groups: ["mock_tests"], enable: !isLiveServer}
function testDeleteCustomer() returns error? {
    CreateCustomerResponse created = check apideck->createCustomer({x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId}, {displayName: "Acme Ltd"});
    DeleteCustomerResponse response = check apideck->deleteCustomer(<string>created.data.id, {x\-apideck\-consumer\-id: consumerId, x\-apideck\-app\-id: appId});
    test:assertEquals(response.data.id, created.data.id);
}
