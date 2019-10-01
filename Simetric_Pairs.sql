-- El query de los pares simĂ©tricos
SELECT X, Y
FROM
((SELECT X, Y
FROM
(SELECT DISTINCT A.X X, A.Y Y
FROM FUNCTIONS A, FUNCTIONS B
WHERE A.X = B.Y
AND B.X = A.Y
AND A.X <> A.Y)
WHERE X < Y)
UNION
(SELECT X, Y
FROM FUNCTIONS
WHERE X IN (SELECT X FROM FUNCTIONS WHERE X = Y GROUP BY X HAVING COUNT(X) > 1)))
ORDER BY X;