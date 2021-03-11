--Find the distinct values for the extended step. The code has been started for you, but you will need to 
--program the third line yourself before running the query.

SELECT 
distinct Extended_step
FROM salary_range_by_job_classification


--Excluding $0.00, what is the minimum bi-weekly high rate of pay 

Select 
min(Biweekly_high_Rate) AS mins
From salary_range_by_job_classification
GROUP BY Biweekly_high_Rate
HAVING COUNT(*)>0


--What is the maximum biweekly high rate of pay 

Select 
MAX(Biweekly_high_Rate) AS mins
From salary_range_by_job_classification


--What is the pay type for all the job codes that start with '03'?

Select
job_code,
pay_type
FROM salary_range_by_job_classification
WHERE job_code LIKE '03%'


--Run a query to find the Effective Date (eff_date) or Salary End Date (sal_end_date) for grade Q90H0?

Select
grade,
sal_end_date
FROM salary_range_by_job_classification
WHERE grade = 'Q90H0'


--Sort the Biweekly low rate in ascending order.

Select
Biweekly_Low_Rate 
FROM salary_range_by_job_classification
ORDER BY Biweekly_Low_Rate

--Write and run a query, with no starter code to answer this question: What Step are Job Codes 0110-0400? 

Select
Step,
Job_Code 
FROM salary_range_by_job_classification
WHERE Job_Code BETWEEN '0110' AND '0400'


-- What is the Biweekly High Rate minus the Biweekly Low Rate for job Code 0170?

Select
Biweekly_High_Rate,
Biweekly_Low_Rate,
(Biweekly_High_Rate - Biweekly_Low_Rate) AS C 
FROM salary_range_by_job_classification
WHERE Job_Code = '0170'


-- What is the Extended Step for Pay Types M, H, and D? 

Select
Extended_Step ,
Pay_Type
FROM salary_range_by_job_classification
WHERE Pay_Type IN ('M', 'H', 'D')


--What is the step for Union Code 990 and a Set ID of SFMTA or COMMN? 

Select
Step  ,
SetID
FROM salary_range_by_job_classification
WHERE Union_Code ='990' AND (SetID="SFMTA" OR SetID="COMMN")


