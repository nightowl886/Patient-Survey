# Patient-Survey


## 📖 Project Inspiration

This project is inspired by a tutorial from **Data Wizardry**.  

Since the original dataset download link used in the tutorial is no longer available, I sourced official datasets directly from **2023 CMS Hospital Cost Report (HCRIS)** and the **Hospital Consumer Assessment of Healthcare Providers and Systems(HCAHPS) dataset**.  


My goal is to explore patient satisfaction with hospitals in the United States. By leveraging these reliable public sources, the project remains reproducible and demonstrates adaptability when facing unavailable resources.


---

## 🎯 Objectives
- Explore hospital capacity across the United States.
- Analyze the distribution of hospital beds by provider and fiscal year.
- Build interactive Tableau dashboards to visualize hospital capacity trends.
- Showcase SQL and Tableau skills in handling healthcare datasets.

---


## My Dataset

In the original tutorial, the blogger had already adjusted the raw HCAHPS & HCRIS dataset and published a curated subset online.  
Since that subset is no longer accessible, I sourced the **HCRIS** & **HCAHPS** directly from the official source.  

Unlike the blogger’s pre-processed sample, I worked with the raw dataset and performed my own cleaning and restructuring steps.  
This approach ensures reproducibility and demonstrates adaptability when original resources are unavailable, while still aligning with the tutorial’s analytical goals.




### 1. Patient Survey(HCAHPS) - Hospital
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

**File preparation with Excel**  
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
1. Import the CMS Hospital Cost Report dataset.  
2. Clean and standardize fiscal year date formats.  
3. Aggregate hospital bed counts by year and provider.  
4. Create Tableau dashboards to visualize:  
   - Total beds by hospital  
   - Trends in hospital capacity over time  
   - Geographic distribution of hospital beds  

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

https://data.cms.gov/provider-data/dataset/dgck-syfz
https://data.cms.gov/provider-compliance/cost-reports/hospital-provider-cost-report/data
