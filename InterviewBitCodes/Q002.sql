-- https://www.interviewbit.com/problems/neutral-reviewers/
SELECT reviewers.reviewer_name 
FROM reviewers
INNER JOIN ratings
on reviewers.reviewer_id = ratings.reviewer_id
WHERE ISNULL(ratings.reviewer_stars);

-- https://www.interviewbit.com/problems/movie-character/
SELECT  
CONCAT(directors.director_first_name , directors.director_last_name) as director_name , movies.movie_title
FROM 
directors
inner join 
movies_directors
on
movies_directors.director_id = directors.director_id

inner join
movies
on
movies.movie_id = movies_directors.movie_id

inner join
movies_cast
on
movies_cast.movie_id = movies.movie_id
where movies_cast.role = 'SeanMaguire';


