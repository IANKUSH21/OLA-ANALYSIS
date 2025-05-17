<!-- README.md  ────────────────────────────────────────────────────────── -->
<p align="center">
  <img src="https://logodix.com/logo/1307141.png" alt="Ola Logo" width="200"/>
</p>

# OLA RIDE ANALYTICS  
**SQL & Power BI end‑to‑end project**

> **Author**: ANKUSH  
> **Email**: ak547874@gmail.com  
> **Tech Stack**: MySQL · Power BI · DAX · Git

---

## 📑 Project Overview
This repository showcases a **complete analytics workflow** for Ola ride data:

1. **Relational‑data modelling** in MySQL (`CREATE DATABASE Ola;` …).
2. **13 parameterised SQL queries** answering real business questions (booking efficiency, cancellations, customer behaviour, revenue, etc.).
3. **10 executive Power BI visuals** turned into an interactive dashboard for C‑level stakeholders.

The goal is to demonstrate **robust data‑pipeline skills**—from raw tables to clean insights—optimised for hiring managers who need hands‑on SQL and BI proficiency.

---

## 🔍 Dataset Highlights
| Field                     | Example                                 | Notes                           |
|---------------------------|-----------------------------------------|---------------------------------|
| `Booking_ID`              | `BKG‑90781`                             | unique ride key                 |
| `Booking_Status`          | `Success`, `Canceled by Customer`, …   | multi‑state enum                |
| `Vehicle_Type`            | `Mini`, `Prime Sedan`, `Auto`, …       | service tiers                   |
| `Ride_Distance` (km)      | `12.7`                                  | numeric                         |
| `Payment_Method`          | `UPI`, `Card`, `Cash`, `Wallet`        | revenue segmentation            |
| `Customer_Rating` / `Driver_Ratings` | 1 – 5                       | quality metrics                 |
| _etc._                    |                                         |                                 |

> **Size**: ~50 k rows (sample)  **Period**: July 2024

---

## 🛠️ SQL Analysis (`/sql/` folder)

| # | Key Question | Script | Insight |
|---|--------------|--------|---------|
| 1 | Retrieve all **successful** bookings | `01_successful_bookings.sql` | Baseline volume |
| 2 | Average ride distance per **vehicle tier** | `02_avg_distance_vehicle.sql` | Demand by tier |
| 3 | Total rides **cancelled by customers** | `03_customer_cancels.sql` | Service pain‑point |
| … | … | … | … |
| 13 | Compare driver vs customer cancellation counts | `13_driver_vs_customer_cancels.sql` | Root‑cause split |

_All scripts use **parameter‑safe** `WHERE` clauses and the `DIVIDE()` pattern to avoid division‑by‑zero._

---

## 📊 Power BI Dashboard (`/pbix/` folder)

| Visual | KPI |
|--------|-----|
| 🗓️ **Ride Volume Over Time** | daily trend & seasonality |
| 🍰 **Booking Status Breakdown** | success / cancel ratios |
| 🚗 **Top 5 Vehicle Types by Distance** | operational load |
| ⭐ **Average Customer Rating by Vehicle** | service quality |
| ⚠️ **Cancellation Reasons** | driver vs customer |
| 💳 **Revenue by Payment Method** | payment mix |
| 🏅 **Top 5 Customers (Value)** | high‑value users |
| 📈 **Distance Distribution per Day** | long vs short rides |
| 🎯 **Driver Rating Histogram** | performance spread |
| 🥇 **Customer vs Driver Ratings** | satisfaction parity |

> Dashboard uses **dark Ola brand theme** (black · yellow · white) and responsive bookmarks for mobile.

---

## 🚀 How to Reproduce

```bash
# 1 .  Clone repository
git clone https://github.com/your‑handle/ola‑ride‑analytics.git
cd ola‑ride‑analytics

# 2 .  Load SQL
mysql -u your_user -p < sql/00_init_and_seed.sql  # creates DB + seeds sample data

# 3 .  Run individual queries
mysql -u your_user ola < sql/05_avg_customer_rating.sql

# 4 .  Open Power BI
#    •  refresh data source connection string
#    •  publish to Power BI Service / embed
🌟 Key Outcomes
93 % overall booking success; key failure drivers: "Personal & Car related issue" (driver) and "No‑show" (customer).

UPI represents 45 % of total revenue, indicating strong digital adoption.

Prime Sedan generates the highest average distance (14 km) but slightly lower customer rating (4.3) than SUV (4.5).

Identified top 5 customers who together contribute ≈12 % of July revenue.

🤝 Connect
Feel free to fork, star, or reach out for collaboration:

✉️ ak547874@gmail.com

💼 LinkedIn - Ankush Kumar 

🐱 GitHub

Thanks for visiting — hope this project helps demonstrate my ability to turn raw ride data into actionable business intelligence!

