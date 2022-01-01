SELECT C.name, SUM(T.amount) AS AMT, COUNT(*) AS ITEMS FROM transactions T
JOIN categories C ON t.category_id = C.id
where date between '2017-01-01' and '2017-01-31'
GROUP BY C.name
ORDER BY Items DESC, C.name