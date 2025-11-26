# Brew & Bloom Coffee – MySQL Analysis Project

## Objective

This project analyzes the 2023 online sales data of Brew & Bloom Coffee (Monday Coffee) to identify the top three Indian cities where the company should open new physical coffee shops. The analysis is performed entirely using MySQL, with each key business question supported by:
- SQL query implementations in `solutions_bbc.sql`
- Output CSV files stored in `Solutions Dataset/`

## Project Structure
```
brew_and_bloom_mysql/
│
├── city.csv
├── customers.csv
├── products.csv
├── sales.csv
│
├── schemas_bbc.sql            # Database schema and table definitions
├── solutions_bbc.sql          # All 10 analytical SQL queries (Q1–Q10)
│
└── Solutions Dataset/         # Query output files
    ├── Q1.csv
    ├── Q2a.csv
    ├── Q2b.csv
    ├── Q3.csv
    ├── Q4.csv
    ├── Q5.csv
    ├── Q6.csv
    ├── Q7.csv
    ├── Q8.csv
    ├── Q9.csv
    └── Q10.csv
```

## Data Sources

The dataset consists of four CSV files:

| File | Description |
|------|-------------|
| `city.csv` | City population data, estimated rent, and city rankings |
| `customers.csv` | Customer profiles linked to cities |
| `products.csv` | Product catalog with pricing information |
| `sales.csv` | All online sales transactions (January–December 2023) |

## Key Questions, Outputs & Insights

### Q1 — Coffee Consumers Count
**Output:** `Solutions Dataset/Q1.csv`

**Insight:** Cities with larger populations naturally have more estimated coffee consumers (25% of population). Delhi, Mumbai, and Bangalore demonstrate the highest market potential based on population scale.

### Q2 — Total Revenue from Q4 2023
**Output:** `Q2a.csv` (overall), `Q2b.csv` (city-wise)

**Total Revenue:** ₹1,963,300

**Insight:** Pune generated the highest revenue in Q4 2023, followed by Delhi and Jaipur. These cities exhibit strong sales momentum and substantial customer demand.

### Q3 — Sales Count for Each Product
**Output:** `Q3.csv`

**Insight:** Certain products, particularly top-selling coffee blends and accessories, demonstrate significantly higher popularity. These items should be prioritized for in-store inventory and promotional campaigns.

### Q4 — Average Sales Amount per City
**Output:** `Q4.csv`

**Insight:** Pune and Jaipur show notably high average sales per customer, indicating strong purchasing power and willingness to spend among their customer bases.

### Q5 — City Population vs Actual Customers
**Output:** `Q5.csv`

**Insight:** Several cities show high estimated coffee consumers but low actual customer engagement, revealing untapped market potential. Delhi demonstrates both high population potential and strong actual engagement, representing an optimal combination.

### Q6 — Top Selling Products by City
**Output:** `Q6.csv`

**Insight:** Each city exhibits distinct top-performing products. This indicates that in-store product recommendations, promotional materials, and inventory should be customized on a city-by-city basis to maximize sales effectiveness.

### Q7 — Unique Customers by City
**Output:** `Q7.csv`

**Insight:** Jaipur (69 customers) and Delhi (68 customers) record the highest unique customer counts, positioning them as strong candidates for store expansion.

### Q8 — Average Sale per Customer vs Rent
**Output:** `Q8.csv`

**Insight:** Cities like Pune and Jaipur offer high sales per customer combined with favorable rent-to-revenue ratios, making them highly profitable regions for physical retail locations.

### Q9 — Monthly Sales Growth
**Output:** `Q9.csv`

**Insight:** Cities demonstrate positive month-over-month sales growth, indicating expanding customer adoption and confirming long-term demand stability.

### Q10 — Market Potential Analysis
**Output:** `Q10.csv`

**Insight:** This comprehensive analysis combines all key metrics including revenue, operational costs, customer base, estimated market size, and average transaction values to rank cities. **Pune, Delhi, and Jaipur** emerge as the top three cities for store expansion based on profitability potential, demand indicators, and cost structure optimization.

## Conclusion

Based on the comprehensive MySQL analysis of 2023 online sales data, the recommended cities for new physical coffee shop locations are:

1. **Pune** - Highest revenue generation with favorable cost structure
2. **Delhi** - Strong customer base with high market potential
3. **Jaipur** - Excellent average sales per customer with manageable operational costs

## Getting Started

1. Import the CSV files into your MySQL database
2. Execute `schemas_bbc.sql` to create the necessary table structures
3. Run queries from `solutions_bbc.sql` to reproduce the analysis
4. Review output files in `Solutions Dataset/` for detailed results

## Technologies Used

- MySQL
- SQL for data analysis and querying
- CSV for data storage and export

## License

This project is available for educational and analytical purposes.

## Contact

For questions or collaboration opportunities, please reach out through GitHub issues.
