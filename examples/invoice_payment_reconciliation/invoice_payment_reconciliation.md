# Invoice payment reconciliation

This example looks up an existing customer, issues an invoice for them, records the payment received against that invoice and reads the invoice back to check its status. Creating the invoice and payment is switched off by default, so a first run only reads the customer.

## Prerequisites

- Ballerina Swan Lake 2201.12.0 or later
- Push the connector to the local repository:
  ```bash
  cd ballerina
  bal pack && bal push --repository=local
  ```
- Create a `Config.toml` in this directory:
  ```toml
  apiKey = "<API key>"
  appId = "<Application ID>"
  consumerId = "<Consumer ID>"
  customerId = "<Customer ID>"
  invoiceDate = "2026-03-05"
  dueDate = "2026-04-04"
  amount = 980.00
  createRecords = false
  ```

## Run the example

```bash
bal run
```
