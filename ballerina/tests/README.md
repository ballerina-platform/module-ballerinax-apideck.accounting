# Running Tests

## Prerequisites

None are needed to run the mock tests. To run against the live Apideck Accounting API, set the following environment variables:

- `IS_LIVE_SERVER` set to `true`
- `APIDECK_API_KEY` your secret API key
- `APIDECK_APP_ID` your Unify application ID
- `APIDECK_CONSUMER_ID` your consumer ID

## Test Environments

| Group | Target | Notes |
|---|---|---|
| `mock_tests` | local mock service on port 9090 | default |
| `live_tests` | Apideck Accounting API | requires `IS_LIVE_SERVER=true` and the variables above |

## Running Tests

```bash
bal test
```

To run a single group:

```bash
bal test --groups mock_tests
```

## Tests

The suite covers 25 operations against the mock service:

- Invoices and customers: list, create, get, update and delete
- Bills and suppliers: list, create and get
- Payments and journal entries: list and create
- Ledger accounts and tax rates: list and get
- Bank accounts: list

Only the 9 list tests run in `live_tests`. The create, get, update and delete tests use placeholder payloads and IDs, so they run only in `mock_tests` and are skipped when `IS_LIVE_SERVER` is `true`.
