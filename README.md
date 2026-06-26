# Analytics Engineering Pipeline with dbt

An end-to-end data transformation pipeline using dbt (Data Build Tool) to model, test, and document e-commerce business data.

<img width="350" height="138.5" alt="dbt" src="https://github.com/user-attachments/assets/fbcca9f6-526d-4314-98d8-54c93c13147e" />

---

## Project Walkthrough

### 1. Data Modeling & Refactoring
* Developed standard Staging models (`stg_`) to clean and standardize raw application tables (`jaffle_shop` and `stripe` payments).
* Handled heterogeneous data types by applying custom casting (`CAST` as timestamp) within the configurations.
* Built downstream Dimension and Fact models using dbt `ref` functions to construct a clean star schema.

### 2. Data Quality & Freshness Monitoring
* Configured `dbt source freshness` alerts with dual-layer threshold checking (`warn_after` / `error_after`) to monitor data ingestion SLAs.
* Implemented generic schema tests (`unique`, `not_null`, and referential integrity `relationships`).
* Authored custom singular SQL tests (`assert_positive_value_for_total_amount`) to capture business logic anomalies before reporting.

### 3. Data Governance
* Created reusable Markdown documentation blocks (`{% docs %}`) to dynamically inject a localized data dictionary into the target lineage graph.

---

## Core Commands

```bash
# Check source data SLAs
dbt source freshness

# Run and materialize all models
dbt run

# Execute all data tests
dbt test

# Generate local documentation site
dbt docs generate
```

---

## Reference
* This project is guided by dbt Labs official foundation courses.
