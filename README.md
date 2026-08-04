# Patient-Survey

## 📖 Overview
This project is inspired by a Data Wizardry tutorial that originally used the HCAHPS dataset.  
Since the original dataset download link is no longer available, I sourced an alternative dataset from **CMS Hospital Cost Report (HCRIS)**.  

The dataset contains hospital-level information such as provider CCN, hospital name, fiscal year dates, and number of beds.  
This ensures the project remains reproducible and demonstrates adaptability when facing unavailable resources.


---

## 🎯 Objectives
- Explore hospital capacity across the United States.
- Analyze the distribution of hospital beds by provider and fiscal year.
- Build interactive Tableau dashboards to visualize hospital capacity trends.
- Showcase SQL and Tableau skills in handling healthcare datasets.

---

## 📂 Dataset



### 2. Hospital Beds
- **Source:** [CMS Hospital Provider Cost Report (HCRIS)](https://data.cms.gov/provider-compliance/cost-reports/hospital-provider-cost-report/data)  
- **Description:** Hospital-level annual cost report data published by the Centers for Medicare & Medicaid Services (CMS).  
- **Fields:**
  - Provider CCN  
  - Hospital Name  
  - Fiscal Year Begin Date  
  - Fiscal Year End Date  
  - Number of Beds  
- ** Blogger's Example Entry（Data Wizardry):**  
441314 | Lauderdale Community Hospital | 10/1/2020 | 12/31/2020 | 25

- **Note:** 
### My Dataset
Since the original HCAHPS dataset used in the tutorial was no longer available, I used the **2023 CMS Hospital Provider Cost Report** instead.  
The structure of my dataset is similar (hospital-level with CCN, name, fiscal year, and bed counts), but the actual content and formatting differ from the blogger’s sample. This substitution ensures reproducibility while demonstrating adaptability in sourcing reliable alternative data.



---

## 🛠️ Tools & Technologies
- **SQL** → Data cleaning & transformation (handling fiscal year ranges, aggregating bed counts).  
- **Tableau** → Dashboard creation & visualization.  
- **Excel/CSV** → Initial dataset exploration.  

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


https://data.cms.gov/provider-compliance/cost-reports/hospital-provider-cost-report/data
