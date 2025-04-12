SELECT 

job_title_short AS title,
job_location AS location,
--job_posted_date::DATE AS date
job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
EXTRACT(MONTH FROM job_posted_date) AS date_month,
EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM 
job_postings_fact

LIMIT 5;

/*
This SQL code creates three new tables—january_jobs,
 february_jobs, and march_jobs—by extracting data 
 from the job_postings_fact table based on the month 
 in which the job was posted.
*/

CREATE TABLE january_jobs AS 
SELECT * 
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 1;

CREATE TABLE february_jobs AS 
SELECT * 
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

CREATE TABLE march_jobs AS 
SELECT * 
FROM job_postings_fact
WHERE EXTRACT(MONTH FROM job_posted_date) = 3;


SELECT job_posted_date 
FROM march_jobs;


--Logical statement just like if statement
SELECT 
    COUNT(job_id) AS number_of_jobs,
   -- job_title_short,
   -- job_location,
    CASE 

        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
        
        END AS location_category
FROM
    job_postings_fact
WHERE 
    job_title_short = 'Data Analyst'
GROUP BY 
    location_category;

    SELECT * 
    FROM job_postings_fact
    LIMIT 100;

