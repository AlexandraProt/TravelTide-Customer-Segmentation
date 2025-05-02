# 🌍 TravelTide Customer Segmentation Project

This project simulates a real-world data challenge from the online travel industry.

As a Data Analyst at **TravelTide**, I worked on segmenting customers to support the launch of a **personalized rewards program**. The goal was to deliver data-driven recommendations based on user behavior and help the marketing team tailor offers for better customer retention.

---

## 🎯 Project Goal

Segment TravelTide customers based on website behavior to enable **targeted perks** and **personalized marketing strategies**.  
Support the marketing team in delivering more relevant offers and boosting customer loyalty.

---

## 🔍 Methodology

### 🗂️ Data Sources Used
- **PostgreSQL database** with the following tables:  
  - `users`: user demographics and home location  
  - `sessions`: user activity and booking sessions  
  - `flights`: flight details per session  
  - `hotels`: hotel bookings per session

### 🧠 Key Steps in the Segmentation Process
1. **Exploratory Data Analysis (EDA):**
   - Inspected all tables and data distributions
   - Joined tables to create a session-level base table
   - Cleaned and enriched the data for feature extraction

2. **Feature Engineering:**
   - Created behavioral metrics such as:
     - Total number of bookings
     - Hotel vs. flight booking ratio
     - Cancellation rate
     - Recency and frequency of activity
     - Discount usage
   - Aggregated features at the user level

3. **Customer Segmentation:**
   - Applied **K-Means clustering**
   - Labeled segments based on dominant behavioral traits
   - Assigned relevant perks to each segment

---

## 📊 Dashboard Design

The following dashboards provide interactive insights into user segments, preferences, and behavior.

### 1. 🎛 Segment Deep Dive Dashboard — Traveler Type

[🔗 View Interactive Dashboard in Tableau Public](https://public.tableau.com/views/TravelTideProject_17452678508900/TravelerType?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

This dashboard compares customer segments based on:
- 💰 Average Lifetime Value (LTV)  
- ✈️ Total Trip Volume  
- 📅 Booking Frequency  
- 🕒 Session Activity  

Use the dropdown filter at the top to explore each traveler type individually.
📌 **Filter by `Traveler Type`** to analyze each segment individually.

### 2. 📈 KPI Dashboard – Value Metrics by Behavior

👉 [View in Tableau Public](https://public.tableau.com/views/TravelTideProject_17452678508900/KPIADSperkm)

Includes:
- ADS per km
- Conversion Rate
- Discount Usage

---

## 👤 Behavioral Features Considered

- Average session duration  
- Booking frequency (flights & hotels)  
- Time between sessions  
- Use of discounts and cancellations  
- Total and average spending  

---
## 🕸️ Normalized Behavioral Profile by Traveler Type

This radar chart visualizes key behavioral differences between user segments:

- **Session Duration**  
- **Session Frequency**  
- **Discount Usage**  
- **ADS per km** (Amount of money saved per kilometer)  
- **Conversion Rate**

Each metric was normalized (min-max) to allow for fair visual comparison across different scales.

- **Radar Chart Preview:**

![Radar Chart](visuals/Normalized_User_Behavior_by_Traveler_Type.png)


📊 **Source Data:**  
- [Radar_Chart_Template_-_Google_Sheets.xlsx](visuals/Radar_Chart_Template_-_Google_Sheets.xlsx)  

- [View in Google Sheets](https://docs.google.com/spreadsheets/d/1_y7IOsS5wWyqMyzKCYx9QUFS5sLNgdjJJ-3vEBjhj_o/edit?usp=sharing)


## 📊 Key Findings

- Identified **5 distinct customer segments** with unique travel behaviors
- Each group showed specific traits such as booking frequency, average spend, and presence of children
- Suggested perks are tailored to reflect user motivation and potential loyalty

---

## 🎁 Perk Strategies

| Segment Name             | Key Behavior Profile                                     | Suggested Perks                                 |
|--------------------------|----------------------------------------------------------|--------------------------------------------------|
| **Business Traveler**    | Frequent traveler, high km flown, short notice bookings | ✈️ Priority boarding, 💼 Free lounge access        |
| **Dreamer**              | Low number of trips, inspired but inactive               | 🌍 Travel inspiration emails, 🎫 Welcome voucher   |
| **Family Traveler**      | Travels with children, medium booking rate               | 👨‍👩‍👧‍👦 Free child stay, 🛏️ Family package deals    |
| **Senior Traveler**      | Older age group, low frequency, steady behavior          | 🧓 Senior discounts, 📞 Personal booking assistant |
| **Young Frequent Traveler** | Frequent, independent travelers                         | 🔄 Flexible cancellations, 🚀 Early access to deals |

---

## 📈 Implementation Ideas

How segmentation can be implemented on the **TravelTide** platform:
- Personalized homepage content
- Behavior-based email campaigns
- Retargeting ads using segment tags
- Dynamic perks displayed based on user group

---

## 🔮 Next Steps

- A/B testing of perks across customer segments  
- Integration with CRM for real-time personalization  
- Track segment shifts over time  
- Monitor KPIs: engagement, conversion, retention per group

---

## 🧰 Tools & Technologies

- **SQL** – Data extraction and joins  
- **Python** – Feature engineering & clustering (K-Means)  
- **Tableau** – Visualizations (bar charts, radar charts, scatter plots)  
- **Google Slides** – Stakeholder presentation  

---

## 📦 Deliverables

- ✅ `README.md` with full project description  
- ✅ ERD diagram ([view here](https://github.com/AlexandraProt/TravelTide-Customer-Segmentation/blob/main/ERD.jpg))  
- ✅ Feature matrix for clustering (`users_with_segments.csv`)  
- ✅ Python notebook with clustering logic  
- ✅ Tableau dashboard  
- ✅ Executive presentation  
- ✅ Final report (PDF)

---

## 🗂️ Directory Structure

📁 TravelTide-Customer-Segmentation/ │ ├── README.md ├── ERD.jpg ├── users_with_segments.csv ├── segmentation_notebook.ipynb ├── visuals/ │ └── dashboard_mockup.md ├── presentation/ │ └── Executive_Summary.pdf

yaml
Copy
Edit

---

## 📝 Summary

- **Goal:** Segment TravelTide users to deliver targeted perks based on behavior  
- **Data:** PostgreSQL – `users`, `sessions`, `flights`, `hotels`  
- **Methods:** SQL + Python (KMeans clustering) + Tableau  
- **Features:** Bookings per session, discount usage, session time  
- **Outcome:** 5 segments with tailored perks for personalization  
- **Next Steps:** A/B testing, CRM integration, longitudinal tracking  

---
## 📽️ Video Presentation

🎥 [Watch the 5-minute presentation on Loom](https://www.loom.com/share/a205f201cbf24aeb967416b477a47b0d?sid=67e54ce3-5741-473b-8598-841791b2c194)

🖥️ [View the Google Slides](https://docs.google.com/presentation/d/1pDFQWuumOTJwHVdJOrDPidyqwfHe4uiSSmrp6Rv6QUU/edit?usp=sharing)

---
