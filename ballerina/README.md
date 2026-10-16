## Overview

[Apideck](https://www.apideck.com/) is a unified API platform that lets applications integrate with many third-party business systems through one consistent data model. Its Accounting API exposes invoices, bills, customers, suppliers, payments, ledger accounts and other accounting records from the connected accounting systems of your customers, so the same calls work whichever system they use.

The Apideck Accounting connector gives Ballerina programs typed access to version 10.63.0 of the Apideck Accounting API, so you can create, read, update, delete and list accounting records across the integrations that Apideck Unify supports.

### Key features

- Manage invoices, bills, credit notes, payments and refunds
- Manage customers, suppliers, employees and their bank accounts
- Read ledger accounts, journal entries, tax rates and financial reports such as the balance sheet and profit and loss
- List records with filtering, sorting and cursor-based pagination
- Authenticate every request with an API key plus your Unify application and consumer IDs

## Setup guide

To use the connector you need an Apideck account, a Unify application and a consumer that has activated an accounting integration.

1. Sign up or log in at the [Apideck dashboard](https://app.apideck.com/).

2. Create a Unify application, or open an existing one.

3. Open the application's API keys page at [app.apideck.com/unify/api-keys](https://app.apideck.com/unify/api-keys) and copy your secret API key and your application ID.

4. Choose a consumer ID for the user or account whose accounting data you want to reach, and activate an accounting integration for that consumer in Apideck Vault.

> **Note:** Keep the secret API key out of client-side code and version control.

## Quickstart

To use the `apideck.accounting` connector in your Ballerina application, update the `.bal` file as follows:

### Step 1: Import the module

```ballerina
import ballerinax/apideck.accounting;
```

### Step 2: Instantiate a new connector

Create a `Config.toml` file with your credentials:

```toml
apiKey = "<API key>"
appId = "<Application ID>"
consumerId = "<Consumer ID>"
```

Then create the client in your `.bal` file:

```ballerina
configurable string apiKey = ?;
configurable string appId = ?;
configurable string consumerId = ?;

accounting:Client apideck = check new ({auth: {token: apiKey}});
```

### Step 3: Invoke the connector operation

```ballerina
public function main() returns error? {
    accounting:GetInvoicesResponse _ = check apideck->listInvoices({
        x\-apideck\-consumer\-id: consumerId,
        x\-apideck\-app\-id: appId
    });
}
```

### Step 4: Run the Ballerina application

```bash
bal run
```


## Examples

The `Apideck Accounting` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/ballerina-platform/module-ballerinax-apideck.accounting/tree/main/examples/), covering the following use cases:

- [invoice_payment_reconciliation](https://github.com/ballerina-platform/module-ballerinax-apideck.accounting/tree/main/examples/invoice_payment_reconciliation) - Issue an invoice for an existing customer, record the payment against it and read the invoice back.
- [supplier_bill_summary](https://github.com/ballerina-platform/module-ballerinax-apideck.accounting/tree/main/examples/supplier_bill_summary) - Page through all bills and total the amounts per supplier.

