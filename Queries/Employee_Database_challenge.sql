--************** Challenge Deliverable 1 *********************--
-- Employees info
SELECT e.emp_no , e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
on t.emp_no = e.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no asc;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;



-- Employee count 
SELECT COUNT(emp_no) as count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;



--***************** Challenge Deliverable 2 **********************--

-- Mentorship Eligibility table
SELECT DISTINCT ON (emp.emp_no) emp.emp_no, emp.first_name, emp.last_name, emp.birth_date,
		demp.from_date , demp.to_date,
		t.title
INTO mentorship_eligibilty
FROM employees as emp
INNER JOIN dept_emp as demp
ON emp.emp_no = demp.emp_no
INNER JOIN titles as t
on emp.emp_no = t.emp_no
WHERE (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND demp.to_date = ('9999-01-01')
ORDER BY emp_no;

