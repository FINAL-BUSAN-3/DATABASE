-- Mysql web
CREATE TABLE model_use (
    model_use_id VARCHAR(100),
    model_use_state BOOLEAN,
    model_use_file BLOB DEFAULT NULL,
    PRIMARY KEY (model_use_id),
    CONSTRAINT fk_model_info
        FOREIGN KEY (model_use_id) REFERENCES model_info(model_info_id)
);