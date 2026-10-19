USE bank_credit_analysis;

-- 1. Data validation
SELECT COUNT(*) AS total_cases, SUM(bad_risk) AS bad_cases,
       COUNT(*) - SUM(bad_risk) AS good_cases,
       ROUND(100.0 * AVG(bad_risk), 2) AS bad_risk_rate_pct
FROM credit_cases_simple;

-- 2. Loan duration vs bad credit risk
SELECT duration_group, COUNT(*) AS cases, SUM(bad_risk) AS bad_cases,
       ROUND(100.0 * AVG(bad_risk), 2) AS bad_risk_rate_pct
FROM credit_cases_simple
GROUP BY duration_group
ORDER BY bad_risk_rate_pct DESC;

-- 3. Credit amount vs bad credit risk
SELECT amount_group, COUNT(*) AS cases, SUM(bad_risk) AS bad_cases,
       ROUND(AVG(credit_amount_dm), 2) AS avg_credit_amount_dm,
       ROUND(100.0 * AVG(bad_risk), 2) AS bad_risk_rate_pct
FROM credit_cases_simple
GROUP BY amount_group
ORDER BY bad_risk_rate_pct DESC;

