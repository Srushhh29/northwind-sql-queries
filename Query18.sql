/* To find all employees who report to ‘Andrew Fuller */

SELECT reports_to 
FROM  employees
WHERE first_name = "Andrew" AND last_name="Fuller";
