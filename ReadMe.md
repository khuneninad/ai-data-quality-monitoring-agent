# 🤖 AI Data Quality Monitoring Agent

### Automated Data Validation • AI-Powered Analysis • Intelligent Email Alerts

An end-to-end data quality monitoring workflow built with **n8n, JavaScript, Groq LLM and PostgreSQL**.

The project automates data validation, calculates quality metrics, generates AI-powered reports, stores monitoring results and sends email alerts whenever data quality issues are detected.

---

## 🚀 Project Overview

Data quality is essential for reliable analytics and business decision-making.

This project demonstrates how workflow automation and Large Language Models (LLMs) can work together to simplify data quality monitoring.

It retrieves product records from a REST API, applies validation rules, calculates a data quality score and uses an AI model to interpret the results.

The generated report is stored in PostgreSQL, while an email notification is triggered when failed records are identified.

## 🏗️ Workflow Architecture

```text
       MANUAL TRIGGER
              |
              ▼
        HTTP REQUEST
       (DummyJSON API)
              |
              ▼
      JAVASCRIPT VALIDATION
              |
              ▼
        BASIC LLM CHAIN
         (Groq LLM)
              |
              ▼
          POSTGRESQL
        (Store Reports)
              |
              ▼
        IF CONDITION
        /          \
       /            \
   FAIL > 0        NO FAILURES
      |                 |
      ▼                 ▼
  EMAIL ALERT        END
```

## 🛠️ Technology Stack

| Technology | Purpose |
|---|---|
| n8n | Workflow automation and orchestration |
| JavaScript | Data validation and quality calculations |
| REST API | Product data ingestion |
| DummyJSON | Sample data source |
| Groq LLM | AI-powered report generation |
| PostgreSQL | Monitoring report storage |
| Docker | Local containerized environment |
| SMTP | Email notifications |

## ✨ Key Features

### 1. API-Based Data Ingestion
- Fetches product records from DummyJSON.
- Processes API responses through an automated workflow.

### 2. Data Quality Validation
Validates product records against multiple rules:

- Missing product ID
- Missing product title
- Missing price
- Invalid or non-positive price
- Invalid or negative stock
- Duplicate product IDs

### 3. Data Quality Metrics
Calculates:
- Total records
- Passed records
- Failed records
- Overall data quality score

### 4. AI-Powered Analysis
Uses Groq LLM to generate a structured report containing:

- Executive Summary
- Data Quality Findings
- Business Impact
- Recommendations
- Final Status

### 5. PostgreSQL Integration
Stores monitoring results, including quality metrics, AI-generated reports and execution timestamps.

### 6. Conditional Email Notifications
An IF node evaluates the failed record count.

- If failed records are greater than zero, an email alert is sent.
- If no failures are detected, the email notification is skipped.

---

## 🔄 Workflow Execution

The workflow currently uses a **Manual Trigger** in n8n.

This allows the user to execute data quality checks whenever required.

The workflow can be extended with scheduled execution in future versions.

## 🗄️ Database Structure

Table: `data_quality_reports`

| Column | Description |
|---|---|
| id | Unique report identifier |
| total_records | Total records processed |
| passed_records | Records passing validation |
| failed_records | Records failing validation |
| quality_score | Calculated quality percentage |
| ai_report | AI-generated analysis |
| created_at | Report creation timestamp |

The SQL table definition is available in:

`database/schema.sql`

---

## 📁 Repository Structure

```text
ai-data-quality-monitoring-agent/
│
├── README.md
├── .gitignore
│
├── workflow/
│   └── ai-data-quality-monitoring-agent.json
│
├── database/
│   └── schema.sql
│
└── screenshots/
    ├── workflow-overview.png
    ├── ai-report.png
    └── email-alert.png
```

## ⚙️ Setup and Installation

### Prerequisites

- Docker Desktop
- n8n
- PostgreSQL
- Groq API key
- SMTP credentials

### Step 1: Clone the Repository

```bash
git clone <YOUR-GITHUB-REPOSITORY-URL>
```

### Step 2: Import the Workflow

1. Open your n8n instance.
2. Import the workflow JSON file from the `workflow` directory.
3. Configure your own credentials.

### Step 3: Configure Credentials

Set up the following credentials in n8n:

- Groq API credentials
- PostgreSQL connection
- SMTP email credentials

### Step 4: Create the Database Table

Execute the SQL script from:

`database/schema.sql`

### Step 5: Execute the Workflow

Click **Execute Workflow** in n8n to start the monitoring process.

---

## 🔮 Future Enhancements

- Automated scheduled monitoring
- Parameterized SQL queries
- Integration with additional API data sources
- Historical data quality tracking
- Data quality monitoring dashboard
- Advanced validation rules
- AI-driven anomaly detection

---

## 🎯 Project Objective

This project demonstrates practical implementation of:

- AI workflow automation
- REST API integration
- Data quality engineering
- JavaScript-based validation
- LLM integration
- PostgreSQL database operations
- Conditional notification workflows

## 👨‍💻 Author

**Ninad Khune**

Data Analytics | AI Automation | Data Engineering

[LinkedIn](https://www.linkedin.com/in/ninadkhune/) · [Portfolio](https://khuneninad.github.io/NinadKhunePortFolio/)

---

⭐ If you find this project interesting, feel free to explore the workflow and its implementation.

**Disclaimer:** This project uses sample product data from DummyJSON for educational and portfolio demonstration purposes.