-- https://www.interviewbit.com/problems/neutral-reviewers/
SELECT reviewers.reviewer_name 
FROM reviewers
INNER JOIN ratings
on reviewers.reviewer_id = ratings.reviewer_id
WHERE ISNULL(ratings.reviewer_stars);