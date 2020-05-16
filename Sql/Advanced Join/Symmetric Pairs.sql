SELECT X, Y
FROM Functions
WHERE X = Y
GROUP BY X, Y
HAVING COUNT(*) = 2

UNION

SELECT L.X, L.Y
FROM Functions AS L
    INNER JOIN Functions AS R ON L.X = R.Y AND L.Y = R.X
WHERE L.X < L.Y
ORDER BY X