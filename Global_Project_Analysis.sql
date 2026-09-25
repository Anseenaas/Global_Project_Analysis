-- =====================================================
-- GLOBAL PROJECT ANALYSIS
-- SQL Portfolio Analysis
-- Dataset: 4,940-row subset of the full dataset
-- =====================================================

-- 1. DATASET OVERVIEW
-- Check the total number of records available for SQL analysis

SELECT COUNT(*) AS total_records
FROM global_project;

-- DATA QUALITY CHECK: MISSING VALUES
-- Check key analytical fields for missing values

SELECT
    SUM(CASE WHEN `Project Cost` IS NULL THEN 1 ELSE 0 END) AS missing_project_cost,
    SUM(CASE WHEN `Years of Experience` IS NULL THEN 1 ELSE 0 END) AS missing_experience,
    SUM(CASE WHEN `Certificates` IS NULL THEN 1 ELSE 0 END) AS missing_certificates,
    SUM(CASE WHEN `Company PCAB Score` IS NULL THEN 1 ELSE 0 END) AS missing_pcab_score,
    SUM(CASE WHEN `Salary Bracket` IS NULL THEN 1 ELSE 0 END) AS missing_salary_bracket,
    SUM(CASE WHEN `Violation Risk Index` IS NULL THEN 1 ELSE 0 END) AS missing_violation_risk
FROM global_project;

-- DATA QUALITY CHECK: DUPLICATE PROJECT IDs
-- Identify Project IDs that appear more than once

SELECT
    `Project ID`,
    COUNT(*) AS occurrence_count
FROM global_project
GROUP BY `Project ID`
HAVING COUNT(*) > 1;
-- 2. SUMMARY STATISTICS
-- Review the age and experience profile of the dataset

SELECT
    MIN(age) AS min_age,
    MAX(age) AS max_age,
    ROUND(AVG(age), 2) AS avg_age,
    MIN(`Years of Experience`) AS min_experience,
    MAX(`Years of Experience`) AS max_experience,
    ROUND(AVG(`Years of Experience`), 2) AS avg_experience
FROM global_project;
-- 3. SALARY BRACKET DISTRIBUTION
-- Analyze the distribution of records across salary brackets
SELECT
    `Salary Bracket`,
    COUNT(*) AS employee_count
FROM global_project
GROUP BY `Salary Bracket`
ORDER BY `Salary Bracket`;

-- 4. PROJECT COST BY EXPERIENCE
-- Analyze how average project cost varies with years of experience

SELECT
    `Years of Experience`,
    ROUND(AVG(`Project Cost`), 2) AS avg_project_cost
FROM global_project
GROUP BY `Years of Experience`
ORDER BY `Years of Experience`;

-- 5. PROJECT COST BY CERTIFICATES
-- Analyze how average project cost varies with the number of certificates
SELECT
    `Certificates`,
    ROUND(AVG(`Project Cost`), 2) AS avg_project_cost
FROM global_project
GROUP BY `Certificates`
ORDER BY `Certificates`;

-- 6. PROJECT COST BY PCAB SCORE
-- Analyze how average project cost varies across Company PCAB Scores
SELECT
    `Company PCAB Score`,
    ROUND(AVG(`Project Cost`), 2) AS avg_project_cost
FROM global_project
GROUP BY `Company PCAB Score`
ORDER BY `Company PCAB Score`;

-- 7. VIOLATION RISK BY CERTIFICATES
-- Analyze how average violation risk varies with the number of certificates
SELECT
    `Certificates`,
    ROUND(AVG(`Violation Risk Index`), 4) AS avg_violation_risk
FROM global_project
GROUP BY `Certificates`
ORDER BY `Certificates`;

-- 8. VIOLATION RISK BY EXPERIENCE
-- Analyze how average violation risk varies with years of experience
SELECT
    `Years of Experience`,
    ROUND(AVG(`Violation Risk Index`), 4) AS avg_violation_risk
FROM global_project
GROUP BY `Years of Experience`
ORDER BY `Years of Experience`;

-- 9. VIOLATION RISK BY PCAB SCORE
-- Analyze how average violation risk varies across Company PCAB Scores
SELECT
    `Company PCAB Score`,
    ROUND(AVG(`Violation Risk Index`), 4) AS avg_violation_risk
FROM global_project
GROUP BY `Company PCAB Score`
ORDER BY `Company PCAB Score`;

-- 10. WORKFORCE PROFILE BY SALARY BRACKET
-- Compare experience, certificates, PCAB score, age, and overtime across salary brackets
SELECT
    `Salary Bracket`,
    COUNT(*) AS record_count,
    ROUND(AVG(age), 2) AS avg_age,
    ROUND(AVG(`Years of Experience`), 2) AS avg_experience,
    ROUND(AVG(`Certificates`), 2) AS avg_certificates,
    ROUND(AVG(`Company PCAB Score`), 2) AS avg_pcab_score,
    ROUND(AVG(`Weekly Overtime Hours`), 2) AS avg_weekly_overtime
FROM global_project
GROUP BY `Salary Bracket`
ORDER BY `Salary Bracket`;