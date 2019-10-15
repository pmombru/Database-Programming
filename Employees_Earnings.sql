-- Employees' earnings against minimum earning
SELECT B.EARNINGS, A.QTY
FROM
(SELECT COUNT(EMPLOYEE_ID) AS QTY
FROM
(SELECT MAX(SALARY*MONTHS) EARNINGS
FROM EMPLOYEE) A,
EMPLOYEE B
WHERE B.SALARY*B.MONTHS = A.EARNINGS) A,
(SELECT MAX(SALARY*MONTHS) EARNINGS
FROM EMPLOYEE) B;