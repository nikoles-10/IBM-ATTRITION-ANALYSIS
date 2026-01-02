use ibm;

show tables;
select * from ibm limit 10;

SELECT COUNT(*) FROM ibm;

SELECT Attrition, COUNT(*)
FROM ibm
GROUP BY Attrition;

SELECT Department, COUNT(*)
FROM ibm
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY COUNT(*) DESC;


SELECT JobSatisfaction, COUNT(*) 
FROM ibm
WHERE Attrition = 'Yes'
GROUP BY JobSatisfaction;

SELECT
    ROUND(
        (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0)
        / COUNT(*),
        2
    ) AS attrition_rate
FROM ibm;




