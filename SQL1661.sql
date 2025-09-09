-- Những vận động viên nào đã tham gia hơn 50 sự kiện?

SELECT athlete_id
FROM Participants
GROUP BY athlete_id
HAVING COUNT(event_id) > 50;