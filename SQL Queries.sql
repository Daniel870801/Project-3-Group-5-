create database bank;
use bank;
select * from bank.bank_deposit;

SELECT marital, count( POUTCOME) AS success_per_status FROM bank_deposit WHERE poutcome='success' GROUP BY marital, poutcome;
CREATE TABLE average_data (SELECT job,
    ROUND(AVG(age), 2) AS avg_age,
    ROUND(AVG(duration), 2) AS avg_duration,
    ROUND(AVG(balance), 2) AS avg_balance FROM
    bank_deposit
WHERE
    target = 'yes'
GROUP BY job);


CREATE TABLE contact_data (SELECT contact,
    
    ROUND(AVG(duration), 2) AS avg_duration,
    ROUND(AVG(balance), 2) AS avg_balance FROM
    bank_deposit
WHERE
    target = 'yes'
GROUP BY contact);

select age, count(age) as num_age from bank_deposit where job='retired' group by age ;