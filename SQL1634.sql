-- Tỷ lệ phụ nữ được tiêm vắc xin ngừa COVID-19 ở Sydney là bao nhiêu?

SELECT 
    100.0 * COUNT(
        CASE WHEN gender = 'Female' 
            AND city = 'Sydney' THEN 1 
        END
    ) / COUNT(
        CASE WHEN city = 'Sydney' THEN 1 
        END
    )
FROM Vaccinations