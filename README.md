# Bluechip SQL Project
**By Philip Van den Berg, March 2025**

## Overview
A SQLite database built to practice SQL for IT procurement and support, inspired by Bluechip Infotech’s quoting team role in Ellerslie, NZ. Complements my CompTIA A+ and Network+ certifications, showcasing practical skills for quoting, renewals, and troubleshooting.

## Tables
- **pricelist**: Hardware/software inventory (e.g., Dell laptops, NZ$1200).
- **customers**: NZ clients (e.g., Auckland School).
- **licenses**: Software renewals (e.g., Microsoft 365, expires 2025-06-01).
- **support_logs**: Error logs (e.g., LIC-001).

## Sample Queries
1. **Quoting**: `SELECT product_name, price FROM pricelist WHERE vendor = 'Dell';`  
   - Output: `Dell XPS 13 Laptop|1200.0`
2. **Customer Updates**: `SELECT name, email FROM customers WHERE last_order > '2025-01-01';`  
   - Output: `NZ Retail Ltd|sales@nzretail.co.nz`
3. **Renewals**: `SELECT customer_id, license_type, expiry_date FROM licenses WHERE expiry_date < '2025-07-01';`  
   - Output: `1|Microsoft 365|2025-06-01`, `2|Antivirus Pro|2025-04-15`
4. **Support**: `SELECT error_code, COUNT(*) FROM support_logs WHERE log_date = '2025-03-23' GROUP BY error_code;`  
   - Output: `LIC-001|1`, `NET-404|1`

## How to Run
1. Install SQLite: [sqlite.org](https://sqlite.org).
2. Run: `sqlite3 bluechip.db < bluechip.sql`.
3. Query with SQLite or any SQL tool.

## Purpose
Demonstrates SQL proficiency for IT roles—built from scratch as a 63-year-old career-switcher to simulate real-world procurement workflows.
