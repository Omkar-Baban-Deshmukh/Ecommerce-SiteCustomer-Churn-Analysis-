#  Customer Churn Analysis: Behavioral & Revenue Insights

## Project Overview
This project analyzes customer churn to identify key behavioral drivers and quantify their financial impact. Using a dataset of **50,000 customers**, the analysis goes beyond churn percentages to evaluate **revenue at risk**.

The project combines:
- **Python** for data cleaning and preparation  
- **SQL (MySQL)** for analytical insights  
- **Power BI** for visualization  


## Objective
- Identify high-risk behavioral patterns driving churn  
- Quantify financial loss due to customer attrition  
- Segment customers based on engagement and service interactions  
- Provide actionable recommendations for retention  


## Technical Workflow

### Data Cleaning (Python)
- Handled missing values  
- Removed unrealistic outliers (e.g., Age > 100)  
- Standardized column names  
- Created derived features:
  - `login_freq_group`
  - `service_call_group`
  - `site_engagement`


### Database Management (MySQL)
- Designed structured schema for analysis  
- Optimized data types to avoid truncation issues  
- Imported cleaned dataset into MySQL  

### Analysis (SQL)
- Calculated KPIs:
  - Churn Rate  
  - Revenue Loss  
  - Average Customer Value  
- Performed segmentation analysis:
  - Engagement-based churn  
  - Service interaction impact  
  - Membership group analysis  


## Key Insights

### 1 Baseline Financial Impact
- **Churn Rate:** 28.90% (~14,450 customers)  
- **Revenue Loss:** ~$20.6M in Lifetime Value (LTV)  
- **Average Loss per Customer:** ~$1,425  

 *Churn represents a significant financial risk requiring targeted retention strategies.*


### 2 Engagement–Revenue Paradox
- **Highest Churn:**  
  - *Very Low Engagement → 63.03% churn*  

- **Highest Revenue Loss:**  
  - *Medium Engagement → $8.54M loss (largest segment)*  

 *Churn rate alone is misleading—volume drives financial impact.*  


### 3️ Service Interactions as Churn Indicators
- **Very High Service Calls → 53.81% churn**  
- **High Call Segment → $14.2M revenue loss (highest risk group)**  

 *Frequent support interactions signal dissatisfaction and high churn risk.*

### 4️ Membership Tenure (Non-Driver)
- Churn remains consistent (~28–29%) across all tenure groups  
- **Early-stage users contribute highest revenue loss ($9.16M)** due to volume  

  *Churn is behavior-driven, not tenure-driven.*


## Actionable Recommendations

### 1. Improve Engagement
- Target users transitioning from **Medium → Low engagement**  
- Use notifications, offers, and personalized content  


###  2. Optimize Customer Support
- Focus on **Medium & High service call segments**  
- Reduce repeated complaints and resolution time  

---

###  3. Protect High-Volume Segments
- Prioritize **Early membership customers**  
- Implement onboarding and retention strategies  



##  Dashboard
Power BI dashboard visualizes:
- Churn Rate & Revenue KPIs  
- Churn by Engagement  
- Revenue Loss by Segment  
- Service Call Impact  

*(Add dashboard screenshot here)*



##  Tools & Technologies
- **Python:** Pandas, NumPy, Matplotlib, Seaborn  
- **SQL:** MySQL (Aggregations, CASE, Views)  
- **Visualization:** Power BI  


##  Project Structure

customer-churn-analysis/

│── data/
│ └── Customer_churn_final.csv

│── notebooks/
│ ├── Customer_Churn_Analysis.ipynb


│── sql/
│ └── sql script for churn analysis.sql

│── powerbi/
│ └── churn_dashboard.pbix

│── images/
│ └── dashboard.png

│── README.md

##  Author
**Onkar Deshmukh**

