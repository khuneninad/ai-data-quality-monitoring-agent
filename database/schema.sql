
CREATE TABLE IF NOT EXISTS data_quality_reports (
    id SERIAL PRIMARY KEY,
    total_records INTEGER,
    passed_records INTEGER,
    failed_records INTEGER,
    quality_score DECIMAL(5,2),
    ai_report TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
