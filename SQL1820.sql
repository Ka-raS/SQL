-- Số trận đã chơi và số trận thắng, thua và hòa của mỗi đội trong mỗi năm, từ các bảng teams, games và games_results là bao nhiêu?

SELECT
    T.team_name,
    YEAR(G.game_date) AS game_year,
    COUNT(GR.result) AS games_played,
    SUM(CASE WHEN GR.result = 'Win' THEN 1 ELSE 0 END) AS wins,
    SUM(CASE WHEN GR.result = 'Loss' THEN 1 ELSE 0 END) AS losses,
    SUM(CASE WHEN GR.result = 'Draw' THEN 1 ELSE 0 END) AS draws
FROM teams as T
JOIN games_results AS GR
ON T.team_id = GR.team_id
JOIN games as G
ON GR.game_id = G.game_id
GROUP BY T.team_name, game_year ORDER BY T.team_name, game_year;