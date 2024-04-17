SELECT
    h.hacker_id ,h.name 
FROM 
    Submissions s
    INNER JOIN Challenges c ON s.challenge_id = c.challenge_id
    INNER JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
    INNER JOIN hackers h ON h.hacker_id = s.hacker_id
WHERE 
    d.score = s.score
GROUP BY 
    s.hacker_id, h.name
HAVING 
    COUNT(c.challenge_id) > 1
ORDER BY 
    COUNT(c.challenge_id) desc, h.hacker_id 
