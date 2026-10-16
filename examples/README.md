# Examples

The `ballerinax/apideck.accounting` connector provides practical examples illustrating usage in various scenarios.

1. [Invoice payment reconciliation](./invoice_payment_reconciliation/invoice_payment_reconciliation.md) - Issue an invoice for an existing customer, record the payment against it and read the invoice back.
2. [Supplier bill summary](./supplier_bill_summary/supplier_bill_summary.md) - Page through all bills and total the amounts per supplier.

## Prerequisites

Create a `Config.toml` in the example directory with the following values:

```toml
apiKey = "<API key>"
appId = "<Application ID>"
consumerId = "<Consumer ID>"
```

Each example documents any further configuration it needs.

## Running an example

Execute the following commands to build an example from the source:

* To build an example:

    ```bash
    bal build
    ```

* To run an example:

    ```bash
    bal run
    ```

## Building the examples with the local module

**Warning**: Due to the absence of support for reading local repositories for single Ballerina files, the Bala of the module is manually written to the central repository as a workaround. Consequently, the bash script may modify your local Ballerina repositories.

Execute the following commands to build all the examples against the changes you have made to the module locally:

* To build all the examples:

    ```bash
    ./build.sh build
    ```

* To run all the examples:

    ```bash
    ./build.sh run
    ```
