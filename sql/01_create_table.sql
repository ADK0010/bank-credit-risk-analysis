
CREATE DATABASE IF NOT EXISTS bank_credit_analysis;
USE bank_credit_analysis;

CREATE TABLE IF NOT EXISTS credit_cases_simple (
    checking_account VARCHAR(10),
    duration_months INT,
    credit_history VARCHAR(10),
    purpose VARCHAR(10),
    credit_amount_dm INT,
    savings VARCHAR(10),
    employment VARCHAR(10),
    installment_rate INT,
    personal_status VARCHAR(10),
    other_debtors VARCHAR(10),
    residence_years INT,
    property VARCHAR(10),
    age INT,
    other_installment_plans VARCHAR(10),
    housing VARCHAR(10),
    existing_credits INT,
    job VARCHAR(10),
    dependents INT,
    telephone VARCHAR(10),
    foreign_worker VARCHAR(10),
    risk_code INT,
    bad_risk TINYINT,
    duration_group VARCHAR(30),
    amount_group VARCHAR(30)
);
