-- Những công ty khởi nghiệp công nghệ sinh học nào ở New York đã nhận được nguồn tài trợ trên 2 triệu đô la nhưng vẫn chưa bắt đầu bất kỳ nghiên cứu di truyền nào?

SELECT bs.startup_id, bs.name
FROM biotech_startups bs
JOIN funding f ON bs.startup_id = f.startup_id 
LEFT JOIN genetic_research gr ON bs.startup_id = gr.startup_id
GROUP BY bs.startup_id, bs.name
HAVING SUM(f.amount) > 2000000
AND COUNT(gr.research_topic) = 0;