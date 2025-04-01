# 🌍 TravelTide Customer Segmentation Project

This project simulates a real-world data challenge from the online travel industry.

As a Data Analyst at **TravelTide**, I worked on segmenting customers to support the launch of a **personalized rewards program**. The goal was to deliver data-driven recommendations based on user behavior and to help the marketing team tailor offers for better customer retention.

---

## 🧭 Project Purpose

To analyze customer behavior using booking data (flights and hotels), engineer behavioral features, segment customers using clustering techniques, and assign each group the most suitable perk. This analysis supports Elena, TravelTide’s Head of Marketing, in building a personalized and effective loyalty program.

---

## 🗓️ Project Timeline & Phases

The project was structured into **four weeks**, each focusing on a different key step:

---

### 1️⃣ Exploratory Data Analysis (EDA)

**Goal:** Understand the structure of the data, business needs, and prepare a clean dataset for analysis.

- Explored `users`, `sessions`, `flights`, and `hotels` tables  
- Identified and removed invalid or irrelevant customers  
- Joined tables to create a session-level base table  
- Created the first aggregated dataset at the user level  
- Documented all columns and clarified data meaning

📌 **Outcome:**  
A clean, enriched, and well-documented session-level table ready for segmentation.

---

### 2️⃣ Feature Engineering

**Goal:** Create meaningful user-level features for segmentation.

- Devised metrics like:
  - Total number of bookings  
  - Hotel vs. flight booking ratio  
  - Cancellation rate  
  - Recency and frequency of bookings  
- Aggregated session data to user level  
- Captured key behavioral traits to distinguish customer types

📌 **Outcome:**  
Feature-rich customer profiles, ready for machine learning segmentation.

---

### 3️⃣ Customer Segmentation

**Goal:** Group customers based on their behavior to support reward personalization.

- Applied clustering techniques (e.g. K-Means)
- Identified and labeled distinct customer groups
- Interpreted segments using customer attributes
- Assigned **favorite perks** to each group:
  - Free cancellations  
  - Hotel discounts  
  - Early access to deals  
  - Priority boarding, etc.

📌 **Outcome:**  
Well-defined customer segments with tailored reward perks.

---

### 4️⃣ Presentation & Delivery

**Goal:** Communicate results clearly and convincingly to stakeholders.

- Created executive summary with cluster insights  
- Presented customer personas based on real data  
- Built visualizations (bar plots, scatter plots, radar charts)  
- Applied data storytelling techniques  
- Included KPIs to measure future program success

📌 **Outcome:**  
A complete data story packaged into a stakeholder-friendly presentation.

---

## 🧰 Tools & Technologies

- **SQL** – Data extraction and joins  
- **Python** – Data cleaning, feature engineering, clustering  
- **Tableau** – Data visualization  
- **Google Slides** – Final presentation

---

## ✅ Deliverables

- Final `README.md` with full project description  
- Session-level base table (.csv)  
- Feature matrix for clustering  
- Python notebook with segmentation logic  
- Tableau dashboard (if applicable)  
- Executive presentation deck  
