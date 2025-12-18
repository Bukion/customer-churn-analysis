CREATE TABLE telecom_raw AS
SELECT *
FROM read_csv_auto('C:\Users\jovan\OneDrive\Desktop\Career Focused\Proposal Project\archive\churn-bigml-20.csv', header=true);
