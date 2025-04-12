--create table named job_applied
CREATE TABLE job_applied(
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);

--insert into the table called job_applied
INSERT INTO job_applied (
    job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status
)
VALUES 
    (101, '2025-03-10', 'Yes', 'resume_v1.pdf', 'Yes', 'cover_letter_v1.pdf', 'Pending'),
    (102, '2025-03-11', 'No', 'resume_v2.pdf', 'No', NULL, 'Rejected'),
    (103, '2025-03-12', 'Yes', 'resume_v3.pdf', 'Yes', 'cover_letter_v2.pdf', 'Interview'),
    (104, '2025-03-13', 'No', 'resume_v4.pdf', 'Yes', 'cover_letter_v3.pdf', 'Offer'),
    (105, '2025-03-14', 'Yes', 'resume_v5.pdf', 'No', NULL, 'In Progress');

--select the entire table
SELECT * FROM job_applied;

--add a column named contact to the table
ALTER TABLE job_applied
ADD contact VARCHAR(50);


--update the record of the contact column created
UPDATE job_applied
SET contact = 'hr@company1.com'  
WHERE job_id = 101;  

UPDATE job_applied
SET contact = 'recruitment@company2.com'  
WHERE job_id = 102;  

UPDATE job_applied 
SET contact = 'jobs@company3.com'  
WHERE job_id = 103;  

UPDATE job_applied
SET contact = 'careers@company4.com'  
WHERE job_id = 104;  

UPDATE job_applied
SET contact = 'apply@company5.com'  
WHERE job_id = 105;  

--change the name of the contact column to contact_name
ALTER TABLE job_applied
RENAME contact TO contact_name;

--Alter datatype of contact_name
ALTER TABLE job_applied
ALTER column contact_name TYPE TEXT;

--Delete the contact_name column
ALTER TABLE job_applied
DROP column contact_name;

--Delete the entire table
DROP TABLE job_applied;