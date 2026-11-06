_Author_:  @DimuthuMadushan \
_Created_: 2026/10/16 \
_Updated_: 2026/10/16 \
_Edition_: Swan Lake

# Sanitation for OpenAPI specification

This document records the sanitation done on top of the official OpenAPI specification from Apideck Accounting. 
The OpenAPI specification is obtained from [wso2/api-specs](https://github.com/wso2/api-specs/blob/main/openapi/apideck/accounting/10.63.0/openapi.yaml).
These changes are done in order to improve the overall usability, and as workarounds for some known language limitations.

1. Change the `url` property of the servers object
- **Original**: `https://unify.apideck.com`
- **Updated**: `https://unify.apideck.com/accounting`
- **Reason**: Common prefix added to base URL to simplify endpoint paths.
<!-- auto-generated -->

2. Update the API Paths
- **Original**: Paths included common prefix `/accounting` in each endpoint.
- **Updated**: Common prefix removed from endpoints as it is now in the base URL.
- **Reason**: Simplifies API paths and avoids duplication.
<!-- auto-generated -->

3. Change `Employee display_name` to nullable
- **Original**: The `display_name` field in `Employee` was `not nullable`.
- **Updated**: The `display_name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

4. Change `ApprovedBy display_name` to nullable
- **Original**: The `display_name` field in `ApprovedBy` was `not nullable`.
- **Updated**: The `display_name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

5. Change `LinkedPaymentAllocationsInner date` to nullable
- **Original**: The `date` field in `LinkedPaymentAllocationsInner` was `not nullable`.
- **Updated**: The `date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

6. Change `LinkedPaymentAllocationsInner allocated_amount` to nullable
- **Original**: The `allocated_amount` field in `LinkedPaymentAllocationsInner` was `not nullable`.
- **Updated**: The `allocated_amount` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

7. Change `BillPaymentAllocations amount` to nullable
- **Original**: The `amount` field in `BillPaymentAllocations` was `not nullable`.
- **Updated**: The `amount` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

8. Change `BankFeedStatementTransactions merchant_category_code` to nullable
- **Original**: The `merchant_category_code` field in `BankFeedStatementTransactions` was `not nullable`.
- **Updated**: The `merchant_category_code` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

9. Change `AccountingPeriod1 name` to nullable
- **Original**: The `name` field in `AccountingPeriod1` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

10. Change `CompanyRowType name` to nullable
- **Original**: The `name` field in `CompanyRowType` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

11. Change `CompanyRowType id` to nullable
- **Original**: The `id` field in `CompanyRowType` was `not nullable`.
- **Updated**: The `id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

12. Change `MetaCursors next` to nullable
- **Original**: The `next` field in `MetaCursors` was `not nullable`.
- **Updated**: The `next` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

13. Change `MetaCursors current` to nullable
- **Original**: The `current` field in `MetaCursors` was `not nullable`.
- **Updated**: The `current` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

14. Change `MetaCursors previous` to nullable
- **Original**: The `previous` field in `MetaCursors` was `not nullable`.
- **Updated**: The `previous` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

15. Change `Manager name` to nullable
- **Original**: The `name` field in `Manager` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

16. Change `InvoicePaymentAllocations date` to nullable
- **Original**: The `date` field in `InvoicePaymentAllocations` was `not nullable`.
- **Updated**: The `date` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

17. Change `InvoicePaymentAllocations allocated_amount` to nullable
- **Original**: The `allocated_amount` field in `InvoicePaymentAllocations` was `not nullable`.
- **Updated**: The `allocated_amount` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

18. Change `TaxRateComponents id` to nullable
- **Original**: The `id` field in `TaxRateComponents` was `not nullable`.
- **Updated**: The `id` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

19. Change `TaxRateComponents rate` to nullable
- **Original**: The `rate` field in `TaxRateComponents` was `not nullable`.
- **Updated**: The `rate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

20. Change `TaxRateComponents compound` to nullable
- **Original**: The `compound` field in `TaxRateComponents` was `not nullable`.
- **Updated**: The `compound` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

21. Change `MetaWarnings status_code` to nullable
- **Original**: The `status_code` field in `MetaWarnings` was `not nullable`.
- **Updated**: The `status_code` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

22. Change `MetaWarnings error` to nullable
- **Original**: The `error` field in `MetaWarnings` was `not nullable`.
- **Updated**: The `error` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

23. Change `MetaWarnings message` to nullable
- **Original**: The `message` field in `MetaWarnings` was `not nullable`.
- **Updated**: The `message` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

24. Change `MetaWarnings operation` to nullable
- **Original**: The `operation` field in `MetaWarnings` was `not nullable`.
- **Updated**: The `operation` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

25. Inline the base of `AccountingWebhookEvent` in the original spec
- **Original**: `AccountingWebhookEvent.allOf[0]` was `$ref: '#/components/schemas/WebhookEvent/allOf/0'`, a reference into another schema's `allOf` member.
- **Updated**: The member is a copy of that object schema (`event_id`, `unified_api`, `service_id`, `consumer_id`, `entity_id`, `entity_type`, `entity_url`, `execution_attempt`, `occurred_at`), with `unified_api` as a plain string.
- **Reason**: Flatten turns the reference into `#/components/schemas/0`, and `bal openapi` rejects the spec ("components.schemas.AccountingWebhookEvent.0 is not of type `schema`").

26. Rename operationIds through `ai-mappings.json`
- **Original**: Resource-first IDs such as `taxRatesAll`, `billsOne`, `billsBatchAdd`.
- **Updated**: Action-first names for all 178 operations: `list<Resources>`, `get<Resource>`, `create<Resource>`, `update<Resource>`, `delete<Resource>`, `create<Resources>Batch`, plus `getCompanyInfo`, `getBalanceSheet`, `getProfitAndLoss`, `getAgedCreditors`, `getAgedDebtors`, `listCompanies` and the attachment operations `listAttachments`, `uploadAttachment`, `getAttachment`, `deleteAttachment`, `downloadAttachment`.
- **Reason**: Intent-revealing, consistent method names. The decisions are stored in `docs/spec/ai-mappings.json` and are reused on regeneration.

27. Rename generated schemas through `ai-mappings.json`
- **Original**: `AccountingWebhookEventAllOf1` and `AccountingWebhookEventAccountingWebhookEventAllOf12`, generated by flatten from item 25.
- **Updated**: `AccountingWebhookEventBase` and `AccountingWebhookEventType`. All other schema names are kept as they are.
- **Reason**: Readable names for flatten-generated schemas.

28. Add descriptions to 72 request bodies in the aligned spec
- **Original**: Request bodies of the create, update and batch operations had no description.
- **Updated**: Each has a short description, such as "Details of the invoice to create" or "Fields of the customer to update", written with `spec_descriptions.py apply`.
- **Reason**: Documents the payload. This edit is made to `aligned_ballerina_openapi.json` only, so it must be re-applied after a re-align.

29. Keep the wire names of the `x-apideck-*` header parameters in the aligned spec
- **Original**: Align adds `x-ballerina-name` (`xApideckConsumerId`, `xApideckAppId`, `xApideckServiceId`, `xApideckCompanyId`, `xApideckFollowRedirects`, `xApideckMetadata`) to the six hyphenated header parameters in `components.parameters`.
- **Updated**: Those six `x-ballerina-name` entries are removed, so the header record fields are named `x\-apideck\-consumer\-id` and so on.
- **Reason**: The generated client spreads the header record into a `map<anydata>` before `http:getHeaderMap`, which loses the `@http:Header` wire names and sends `xApideckConsumerId` instead of `x-apideck-consumer-id`. Naming the fields after the wire names makes the headers go out correctly. This is a hand edit to the aligned spec and must be re-applied after a re-align.

30. Replace the API overview in `info.description`
- **Original**: `info.description` was the full API guide (base URL, header table, pagination, SDKs, error types, API design, static IPs), about 15,000 characters.
- **Updated**: One sentence that describes the Apideck Accounting API. The change is made in the original spec and in `aligned_ballerina_openapi.json`.
- **Reason**: The generator writes `info.description` as the doc comment of the `Client` class, where the full guide is vague, and it shows up in API docs and IDE hovers.

31. Change the `apiKey` security scheme to HTTP bearer
- **Original**: `type: apiKey`, `in: header`, `name: Authorization`, with a long description. The client took an `ApiKeysConfig` whose `authorization` value had to start with the `Bearer` prefix, followed by a space.
- **Updated**: `type: http`, `scheme: bearer`, with a one-line description. The scheme key stays `apiKey`, so the 179 `security` references are unchanged.
- **Reason**: Apideck expects `Authorization: Bearer <API key>`, which is what a bearer scheme sends. The client now takes the standard `ConnectionConfig` with `auth: {token: apiKey}`.

32. Use the `*CreateInput` schemas as request bodies
- **Original**: The create and update operations of customers, suppliers, credit notes, payments and bill payments took the read models `Customer`, `Supplier`, `CreditNote`, `Payment` and `BillPayment`, which list the read-only `id` as required.
- **Updated**: Their request bodies reference the writable schemas the spec already defines: `CustomerCreateInput`, `SupplierCreateInput`, `CreditNoteCreateInput`, `PaymentCreateInput` and `BillPaymentCreateInput`. This covers `POST /customers`, `PATCH /customers/{id}`, `POST /suppliers`, `PATCH /suppliers/{id}`, `POST /credit-notes`, `PATCH /credit-notes/{id}`, `POST /payments`, `PATCH /payments/{id}`, `POST /bill-payments` and `PATCH /bill-payments/{id}`. The spec has no separate update inputs, so the update operations use the create inputs too.
- **Reason**: With the read models, callers had to pass an `id` the server assigns, and update calls repeated the `id` from the path. The mock's `post customers`, `patch customers/[id]`, `post suppliers` and `post payments` resources take the same types.

33. Remove `id` from `required` in schemas used as request bodies that have no input schema
- **Original**: `Refund` and `SalesReceipt` required `id` and `total_amount`. `AccountingBankAccount`, `BankFeedAccount` and `BankFeedStatement` required `id`. Each of these is the request body of its create and update operation, and its `id` is read-only.
- **Updated**: `id` is removed from each `required` list. `Refund` and `SalesReceipt` keep `total_amount`, and the other three no longer have a `required` list.
- **Reason**: The spec defines no writable input schema for these resources, and the generator ignores `readOnly`, so callers had to pass a dummy `id`. As a side effect, `id` is optional in the response types of these five resources.

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/aligned_ballerina_openapi.json -o ballerina --mode client --client-methods remote --license docs/license.txt
```

Note: The license year is hardcoded to 2026, change if necessary.
