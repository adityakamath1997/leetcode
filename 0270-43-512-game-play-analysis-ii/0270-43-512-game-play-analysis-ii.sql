# Write your MySQL query statement below
WITH min_date AS(
    SELECT player_id,MIN(event_date) as event_date
    from Activity
    GROUP BY player_id
)

SELECT a.player_id,a.device_id
FROM Activity a
INNER JOIN min_date m
ON a.player_id=m.player_id
AND a.event_date=m.event_date