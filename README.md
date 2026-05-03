# Customer Churn Analysis

## Project Overview

This project analyzes customer behavior to identify key factors driving churn. Using exploratory data analysis (EDA), the goal is to uncover patterns that help businesses improve customer retention.


## Objective

* Understand why customers churn
* Identify high-risk customer segments
* Provide actionable business recommendations


## Dataset

* Records: 50,000 customers
* Features: Demographics, engagement, purchases, service interactions
* Target Variable: `Churned` (0 = Retained, 1 = Churned)

## Data Cleaning

* Handled missing values using median/mean based on distribution
* Removed unrealistic values (e.g., invalid age ranges)
* Converted categorical columns to appropriate data types
* Created grouped features for better segmentation:

  * `login_freq_Group`
  * `purchase_group`
  * `service_group`
* Ensured consistent and analysis-ready dataset


## Key Insights

### 1. Low Engagement Drives Churn

* Very low engagement → ~63% churn
* Very high engagement → ~15% churn

Engagement is a critical retention factor.


### 2. Login Frequency as Early Signal

* Low login users → ~45% churn
* High login users → ~18% churn

Reduced activity signals potential churn.


### 3. Purchase Behavior Impact

* Very low purchases → ~63% churn
* Very high purchases → ~19% churn

High-value customers are more likely to stay.


### 4. Customer Service Interaction

* Low calls → ~12% churn
* Very high calls → ~53% churn

Frequent issues strongly correlate with churn.


### 5. Membership Duration (Non-driver)

* Churn rate remains ~29% across all groups

Tenure does not significantly impact churn.


## Conclusion

Customer churn is primarily driven by behavioral and engagement factors, not by tenure.

### Key Drivers:

* Low engagement
* Low login frequency
* Low purchase activity
* High customer service interactions


## Business Recommendations

* Improve user engagement (UX, personalization, notifications)
* Encourage purchases (offers, recommendations, loyalty programs)
* Reduce customer issues (faster support, proactive solutions)
* Target high-risk users with re-engagement campaigns


## Tools & Technologies

* Python (Pandas, NumPy, Seaborn, Matplotlib)
* Power BI (for dashboard visualization)


## Future Scope

* Build predictive churn model (Machine Learning)
* Deploy dashboard for real-time monitoring
* Perform cohort analysis for deeper insights


## Author

Onkar Deshmukh


## If you found this useful

Give this repository a star and feel free to connect.

