# Patient-Survey


## 📖 Project Inspiration & Overview

This project is inspired by a tutorial from **Data Wizardry**.   This project integrates Hospital Bed Capacity Data with HCAHPS Patient Satisfaction Survey Results. After cleaning and transformation, it produces a consolidated dataset optimized for Tableau visualization. The dataset enables analysis of hospital resource allocation alongside patient experience.

Since the original dataset download link used in the tutorial is no longer available, I sourced official datasets directly from **2023 CMS Hospital Cost Report (HCRIS)** and the **Hospital Consumer Assessment of Healthcare Providers and Systems(HCAHPS) dataset**.  
By leveraging these reliable public sources, the project remains reproducible and demonstrates adaptability when facing unavailable resources.


---

## 🎯 Objectives
- Explore patient satisfaction rating scores across the United States.
- Showcase SQL and Tableau skills in handling healthcare datasets.
- Build interactive Tableau dashboards to visualize hospital capacity trends based on state and hospital size.
- Compare hospital response rates against cohort averages using fixed dimensions and Delta analysis.

---


## Key Features

- Data Cleaning: Standardizes hospital identifiers (provider_ccn) and converts date fields into consistent formats.

- Latest Record Selection: Uses the row_number() window function to extract the most recent bed count for each hospital.

- Data Integration: Merges HCAHPS survey data with hospital bed data by hospital ID, ensuring all patient satisfaction records are preserved.

- Visualization Ready: Outputs a table Tableau_File that can be directly used in Tableau for analysis and dashboards.

---
## Data Sources

In the original tutorial, the YouTuber had already adjusted the raw HCAHPS & HCRIS dataset and published a curated subset online.  
Since that subset is no longer accessible, I sourced the **HCRIS** & **HCAHPS** directly from the official source.  

Unlike the YouTuber’s pre-processed sample, I worked with the raw dataset and performed my own cleaning and restructuring steps.  
This approach ensures reproducibility and demonstrates adaptability when original resources are unattainable, while still aligning with the tutorial’s analytical goals.




### 1. Patient Survey(HCAHPS) - HCAHPS data
- **Source:** [Hospital Consumer Assessment of Healthcare Providers and Systems (HCAHPS)](https://data.cms.gov/provider-data/dataset/dgck-syfz)  
- **Description:** A list of hospital ratings for the Hospital Consumer Assessment of Healthcare Providers and Systems (HCAHPS). HCAHPS is a national, standardized survey of hospital patients about their experiences during a recent inpatient hospital stay.


### 2. Hospital Beds
- **Source:** [CMS Hospital Provider Cost Report (HCRIS)](https://data.cms.gov/provider-compliance/cost-reports/hospital-provider-cost-report/data)  
- **Description:** Hospital-level annual cost report data published by the Centers for Medicare & Medicaid Services (CMS).  
- **Fields:**
  - Provider CCN  
  - Hospital Name  
  - Fiscal Year Begin Date  
  - Fiscal Year End Date  
  - Number of Beds  
- **Example Entry:**  
441314 | Lauderdale Community Hospital | 10/1/2020 | 12/31/2020 | 25

---
## 🧹 Dataset cleaning 
Before importing the dataset into PostgreSQL, I performed several cleaning steps to ensure compatibility and accuracy:

**Data Exploration with Excel**  
I used Excel to process the dataset directly:  
  - Removed irrelevant columns not required for the analysis to keep the schema consistent with the project design.
  - Applied **Find & Replace** to substitute entries such as `Not Available` or `Not Applicable` with empty cells (`NULL`), ensuring proper data types and preventing import errors in PostgreSQL.  
  - Exported the cleaned file back to **CSV (UTF‑8)** format.  

By applying these cleaning steps, the dataset could be successfully imported into PostgreSQL without errors, and the analysis remained reproducible.


---

## 🛠️ Tools & Technologies
- **Excel** → Initial dataset exploration.  
- **Postgres** → Data cleaning & transformation.  
- **Tableau** → Dashboard creation & visualization.  

---

## 📊 Analysis Workflow

### 1. Standardize Identifiers & Dates
- Convert hospital IDs (provider_ccn, facility_id) to 6‑digit text.
- Convert all date fields using TO_DATE().

### 2. Prepare Hospital Beds Data
- Select key fields (ID, bed count, fiscal year dates).
- Use ROW_NUMBER() to identify the latest bed record per hospital.

### 3. Prepare HCAHPS Data
- Standardize hospital ID format.
- Convert survey start/end dates.
- Keep all HCAHPS metrics.

### 4. Integrate Both Datasets
- LEFT JOIN HCAHPS with the latest bed record.
- Add bed count and reporting period fields.

### 5. Create Tableau Dashboard
- Cohort-Based HCAHPS Analysis
  This analysis defines cohorts by State × Hospital Size × HCAHPS Answer Description, computes their mean response rate, and uses Delta to measure each hospital’s performance relative to its cohort.

https://public.tableau.com/app/profile/meghan.wang/viz/HospitalSurvey_17865462469090/HCAHPADashboard?publish=yes 

---

## 📈 Key Insights (to be expanded)
- Variation in hospital bed capacity across states and providers.  
- Fiscal year trends in reported capacity.  
- Potential correlations with patient satisfaction datasets (e.g., HCAHPS).  

---

## 🚀 Next Steps
- Integrate HCAHPS patient satisfaction data with hospital bed capacity.  
- Expand dashboards to include comparative analysis between hospital capacity and patient outcomes.  

---

## 📜 Notes
This project demonstrates adaptability: when the original dataset was unavailable, I identified and used a reliable alternative (CMS HCRIS).  
It highlights problem-solving skills and resourcefulness in data projects.

https://data.cms.gov/provider-data/dataset/dgck-syfz \
https://data.cms.gov/provider-compliance/cost-reports/hospital-provider-cost-report/data


## Future Improvements

- Add more hospital metrics (e.g., financial data, quality of care indicators)

- Automate data update workflows

- Expand integration to additional healthcare datasets
