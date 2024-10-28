-- Mysql web
CREATE TABLE model_info (
    model_info_id VARCHAR(100) PRIMARY KEY,
    model_name VARCHAR(50),
    model_version INT,
    python_version DECIMAL(3, 2),
    library VARCHAR(50),
    model_info VARCHAR(50),
    deployment_date DATETIME,
    loss DECIMAL(3, 2),
    accuracy DECIMAL(3, 2),
    model_info_file BLOB DEFAULT NULL
);
