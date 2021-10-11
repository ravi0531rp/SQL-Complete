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


-- https://www.interviewbit.com/problems/short-films/
select 
movies.movie_title, movies.movie_year, 
CONCAT(directors.director_first_name,directors.director_last_name) as director_name,
CONCAT(actors.actor_first_name,actors.actor_last_name) as actor_name,
movies_cast.role
from 
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
movies.movie_id = movies_cast.movie_id

inner join
actors
on
movies_cast.actor_id = actors.actor_id
order by movies.movie_time
limit 1;

-- https://www.interviewbit.com/problems/actors-and-their-movies/
select movie_title
from movies where movie_id in
(select movie_id from movies_cast where actor_id in
(select actor_id from movies_cast group by actor_id having count(movie_id)>=2))