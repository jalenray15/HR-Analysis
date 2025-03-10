# HR Analytics Dashboard

<img width="1175" alt="Screen Shot 2025-03-10 at 4 13 32 PM" src="https://github.com/user-attachments/assets/d3e24254-35a1-4dd5-a19d-0d579442c1d3" />


## 📊 Project Background

 I've conducted a comprehensive analysis of our human resources data to identify key patterns in employee attrition, compensation, and workforce engagement. Our organization, with 1,470 employees across three departments (Sales, HR, and R&D), needed deeper insights into factors affecting employee turnover and performance to improve retention strategies and workforce management.

This project utilizes SQL for data extraction and cleaning, with Tableau for visualization and interactive dashboard creation. The analysis provides actionable insights for HR managers, department heads, and executive leadership to make data-driven decisions regarding workforce planning and employee engagement initiatives.

## 🔍 Key Analysis Areas

- **Attrition Analysis**: Identifying departments and roles with high turnover rates
- **Compensation Structure**: Analyzing salary distribution across departments 
- **Workforce Demographics**: Examining employee tenure and distribution
- **Work-Life Balance Impact**: Understanding the relationship between work-life balance and performance

The SQL queries used to clean and prepare the data for this analysis can be found in the [`hr_data_analysis.sql`](hr_data_analysis.sql) file.


## 💾 Data Structure & Initial Checks

The HR database consists of a single comprehensive table with 1,470 records and 39 columns. Key fields include:

| Category | Fields |
|----------|--------|
| **Employee Information** | Employee Number, Age, Gender, Department, Job Role |
| **Performance Metrics** | Performance Rating, Job Satisfaction, Environment Satisfaction |
| **Compensation Data** | Monthly Income, Percent Salary Hike, Stock Option Level |
| **Tenure Information** | Years at Company, Years in Current Role, Years Since Last Promotion |
| **Work-Life Indicators** | Work Life Balance, Business Travel, Overtime |

## 📋 Executive Summary

### Overview of Findings

Our analysis reveals that the company faces significant attrition challenges in specific job roles, particularly Sales Representatives (40% attrition) and Laboratory Technicians (24%). The Sales department has the highest attrition rate (21%) despite offering the highest average compensation ($6,959). Interestingly, work-life balance shows a counterintuitive relationship with performance, suggesting potential burnout among high performers.

## 🔎 Insights Deep Dive

### Attrition Analysis:

1. **Department-Level Attrition**: Sales department shows the highest attrition rate at 21%, followed by HR (19%) and R&D (14%). Despite Sales offering the highest average compensation, it still experiences the greatest employee turnover.

2. **Job Role Vulnerability**: Sales Representatives have an alarming 40% attrition rate, more than double the company average of 16.12%. Laboratory Technicians (24%) and Human Resources staff (23%) are also at high risk.

3. **Retention Strengths**: Research Directors show excellent retention with only 3% attrition, while Manager positions maintain a solid 5% attrition rate, significantly below the company average.

4. **Attrition Distribution**: Overall company attrition stands at 16.12%, with 237 employees having left the organization during the analysis period.

<img width="800" alt="Screen Shot 2025-03-10 at 4 18 21 PM" src="https://github.com/user-attachments/assets/05655a49-b68b-4c6f-831a-c463b5c69411" />

<img width="800" alt="Screen Shot 2025-03-10 at 4 19 01 PM" src="https://github.com/user-attachments/assets/f865bfac-01dc-4bf7-9582-70fbd71dd177" />

### Compensation Structure:

1. **Departmental Compensation**: Sales leads with the highest average monthly income ($6,959), followed by HR ($6,655) and R&D ($6,281).

2. **Compensation vs. Retention**: Despite having the highest compensation, Sales still has the highest attrition, indicating that factors beyond salary are driving turnover.

3. **Compensation Strategy**: The relatively narrow spread between departmental averages ($678 difference between highest and lowest) suggests a fairly equitable compensation structure across departments.
   
<img width="800" alt="Screen Shot 2025-03-10 at 4 21 24 PM" src="https://github.com/user-attachments/assets/d3ca44a0-649a-48e1-935c-7c4d3cffcb69" />



### Workforce Demographics:

1. **Tenure Distribution**: The workforce shows a balanced distribution across tenure groups with 31% having 6-10 years of service, 30% with 3-5 years, 23% with 0-2 years, and 17% with 10+ years.

2. **Experience Concentration**: Mid-career employees (3-10 years of tenure) make up the majority of the workforce (61%), providing a solid foundation of experienced staff.

3. **New Employee Integration**: Nearly a quarter of employees (23%) are relatively new to the organization (0-2 years), highlighting the importance of effective onboarding and early engagement programs.

   
<img width="800" alt="Screen Shot 2025-03-10 at 4 22 24 PM" src="https://github.com/user-attachments/assets/6a7ce862-e5b0-489d-873a-30055188445b" />



### Work-Life Balance Impact:

1. **Performance Paradox**: Counterintuitively, employees reporting the lowest work-life balance (rating of 1) show higher performance ratings (3.17) than the company average.

2. **Balance Distribution**: The average work-life balance rating across the company is 2.76, suggesting room for improvement in this area.

3. **Balance-Performance Relationship**: The data shows a slight negative correlation between work-life balance and performance, suggesting potential burnout among high performers.

<img width="800" alt="Screen Shot 2025-03-10 at 4 24 25 PM" src="https://github.com/user-attachments/assets/30644040-7727-4837-8030-c424ac5b948d" />


## 💡 Recommendations

Based on the insights and findings above, we would recommend the HR leadership and department managers to consider the following:

1. **Targeted Retention Programs**: Implement specific retention initiatives for Sales Representatives and Laboratory Technicians, who show attrition rates far above the company average.

2. **Exit Interview Enhancement**: Conduct more detailed exit interviews with departing Sales department employees to identify non-monetary factors driving their departure despite higher compensation.

3. **Work-Life Balance Intervention**: Investigate the concerning relationship between low work-life balance and high performance, potentially implementing burnout prevention programs for high performers.

4. **Career Progression Framework**: Develop clearer career progression paths for roles with high turnover, especially in the Sales and Laboratory departments.

5. **Tenure-Based Engagement**: Create tailored engagement strategies for different tenure groups, with special attention to the 23% of employees in their first two years who may be at higher risk of departure.


## 🛠️ Technologies Used

- SQL for data cleaning and preparation
- Tableau for data visualization and dashboard creation

