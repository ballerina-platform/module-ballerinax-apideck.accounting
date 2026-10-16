# Supplier bill summary

This example pages through every bill in the connected accounting system by following the pagination cursor, then prints the number of bills read and the total amount per supplier. It only reads data.

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
  ```

## Run the example

```bash
bal run
```
