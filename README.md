# 🏛️ PHASE 4 — Enterprise Workforce & Performance Calibration Analytics

## 📌 Executive Summary
An enterprise-grade People Analytics solution built across a **Dual-Tier Analytics Framework** (Excel Operational Cockpit & Power BI Strategic Dashboard). The framework addresses a critical **Centrality Evaluation Bias (78.7% concentration in "Fully Meets")** across a 3,000-employee dataset, pairing data modeling with HR Governance Frameworks (RACI & RAID).

---

## 📐 Dual-Tier Architecture Overview

```text
┌────────────────────────────────────────────────────────────────────────┐
│                      GLOBAL WORKFORCE COCKPIT                          │
└───────────────────────────────────┬────────────────────────────────────┘
                                    │
          ┌─────────────────────────┴─────────────────────────┐
          ▼                                                   ▼
┌────────────────────────────┐                       ┌────────────────────┐
│      EXCEL DASHBOARD       │                       │  POWER BI DASHBOARD│
│   (Tier 1: Demographics)   │                       │ (Tier 2: Performance)│
│  • Headcount & Attrition   │                       │  • Calibration     │
│  • Geographic Distribution │ ─── Unified Logic ──► │  • PayZone Match   │
│  • Status Breakdown        │                       │  • Evaluation Bias │
└────────────────────────────┘                       └────────────────────┘
```


---

## 📊 Dual-Tier Cockpit Specifications

### Tier 1: Operational & Demographics Cockpit (Excel)
* **Objective:** Fast, tactical monitoring of workforce movement and headcount retention.
* **Key Metrics:** 
  * Total Headcount: **3,000**
  * Active Headcount: **2,458**
  * Voluntary Turnover: **321**
  * Avg. Tenure: **5.54 Years**
* **Primary Visuals:** Headcount Distribution by Business Unit & Workforce Status Breakdown.

### Tier 2: Performance Calibration & Evaluation Bias Analytics (Power BI)
* **Objective:** Identifying rating compression, manager evaluation bias, and salary band alignment.
* **Key Metrics:** 
  * Total Evaluated Headcount: **3,000**
  * Centrality Concentration (% Fully Meets): **78.7%**
  * Average Rating Score: **2.97 / 5.0**
* **Primary Visuals:** Performance Rating Distribution & Mean Performance Rating by Department.

---

## 🔍 Strategic Insights & Recommendations

### 💡 Key Findings
1. **Severe Centrality Bias:** **78.7%** of employees are grouped in *"Fully Meets"*, revealing an absence of forced calibration by evaluators.
2. **Narrow Performance Parity:** Departmental rating averages range strictly between **2.79** and **3.02**, obscuring real High Performers.
3. **Turnover Impact:** **321 voluntary terminations** suggest top-talent dissatisfaction due to uncalibrated merit distribution.

### 🎯 Strategic Actions
* **Talent Calibration Committees:** Mandate pre-close calibration sessions for managers with rigid rubric distribution.
* **PayZone & Merit Alignment:** Cross-reference ratings with salary bands (`PayZone`) to protect compensation budgets for the top quartile.
* **ETL Pipeline Optimization:** Power Query integration reducing monthly reporting cycle times by **~95%**.

---

## 👥 4. RACI Governance Matrix

| Business Role | Excel (Operational Layer) | Power BI (Performance Layer) | RACI Responsibility |
| :--- | :--- | :--- | :--- |
| **CHRO / HR VP** | Quarterly turnover summary review | Merit & calibration approval | **Accountable (A)** |
| **HR Business Partners (HRBPs)** | Weekly joiners/leavers control | Departmental calibration sessions | **Responsible (R)** |
| **Line Managers** | Read-only aggregate view | Team performance inputs | **Consulted (C)** |
| **People Analytics / HRIS** | ETL pipeline & data cleansing | DAX measures, RLS & governance | **Responsible / Accountable (R/A)** |

---

## 🛡️ 5. RAID Risk Management Log

| Type | Project Description | Mitigation Strategy |
| :--- | :--- | :--- |
| **Risk** | High-performer flight risk due to uncalibrated performance reviews and flat compensation. | Redesign performance policies and implement strict calibration curves. |
| **Assumption** | HRIS data exports (Workday/SAP) are consistent and free of duplicates. | Automated data validation and cleansing rules via Power Query pipelines. |
| **Issue** | Legacy operational inefficiency from manual, disconnected spreadsheet reporting. | Star schema implementation in Power BI with scheduled cloud refresh. |
| **Dependency** | Analytics adoption relies on HRBP engagement and timely HRIS data en
