

SELECT
    sd.district_name,
    AVG(s.num_courses) AS
    average_courses
FROM
    Students AS s
INNER JOIN
    School_districts AS sd 
    ON s.district_id = sd.district_id
GROUP BY
    sd.district_name
ORDER BY 
    average_courses DESC;
