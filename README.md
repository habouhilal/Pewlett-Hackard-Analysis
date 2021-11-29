# Pewlett-Hackard-Analysis
Recourses
•	Tables.csv
Software
•	 SQL, PostgreSQL, pgAdmin

## Overview 

Pewlett Hackard is a company with many employees. As many of baby boomers are beginning to retire, HR is conducting an Analysis for the future retirement plans, vacant positions and implementing process of rehiring employees to ensure the continuity of the company. The analysis focused on the following

*  Determining the number of retiring employees 
*  Determining the number of retiring employees per title,
*  Identifying employees who are eligible to participate in a mentorship program. 
*  Creating tailored lists for specific departments 

## Results

### The Number of Retiring Employees by Title
We used the ERD created in this module as a reference and knowledge of SQL queries to create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database we need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title.


<img width="780" alt="retirement_titles" src="https://user-images.githubusercontent.com/91625564/143803871-b8a64194-d903-4c91-99a6-dc37628d9360.png">

Then we created a table that holds the count of retiring employee by title:

<img width="250" alt="retiring_titels" src="https://user-images.githubusercontent.com/91625564/143804079-34a3a28c-ddbf-4386-8b99-7d15ab222b5e.png">

=> As you can Senior Engineer and Senior Staff holds the most employee eligible fotr retirement. The manager departement is least impacted by the "silver tsunami”.

### The Employees Eligible for the Mentorship Program
In this section, we create the Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program. Based on the birthdate, we choose the employee born January 1, 1965 and December 31, 1965. Also, we made sure to gather all information about the employees’ number, first and last name, title and more. 


<img width="951" alt="mentorship_eligibilty" src="https://user-images.githubusercontent.com/91625564/143804741-9886a2df-9eb5-4968-9bdf-7728d57d6972.png">



## Summary

Looking at the results, 90,328 roles will need to be filled as the "silver tsunami" begins to make an impact. A huge number of them are Senior titles. The retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees are only 1549. The company needs to make urgent recruiting decisions to lower the impact of this disaster. 
This analysis is a great first step to prevent and prepare for the silver tsunami".
![image](https://user-images.githubusercontent.com/91625564/143806164-9c18e14a-3762-47b5-998f-dcfe67be2260.png)
