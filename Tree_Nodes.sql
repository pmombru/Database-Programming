-- Tree nodes
SELECT N, CASE
WHEN P IS NOT NULL AND N IN (SELECT P FROM BST) THEN 'Inner'
WHEN P IS NULL THEN 'Root'
ELSE 'Leaf'
END NODE_TYPE
FROM BST
ORDER BY N;