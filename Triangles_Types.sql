--Types of triangles
SELECT 
CASE 
    WHEN (A+B > C) AND A = B AND B = C THEN 'Equilateral'
    WHEN (A+B > C) AND ((A = B AND B <> C) OR (B = C AND B <> A) OR (A = C AND A <> B)) THEN 'Isosceles'
    WHEN (A+B > C) AND A <> B AND A <> C AND B <> C THEN 'Scalene'
    ELSE 'Not A Triangle'
END TR_TYPE
FROM TRIANGLES;