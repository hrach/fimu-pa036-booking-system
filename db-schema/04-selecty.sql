SELECT
  projection.projection_id,
  movie.title,
  movie.descritption,
  movie.running_time,
  date_part('year', movie.release_date),
  genre.genre_type,
  projection.start,
  projection.price,
  projection.projection_id,
  hall.hall_id
FROM 
  projection
  LEFT JOIN movie
    ON movie.movie_id = projection.movie_id
  LEFT JOIN movie_genre
    ON movie_genre.movie_id = movie.movie_id
  LEFT JOIN genre
    ON genre.genre_id = movie_genre.genre_id
  LEFT JOIN hall
    ON hall.hall_id = projection.hall_id
  LEFT JOIN branch_office
    ON branch_office.branch_office_id = hall.branch_office_id


-- pocet mist k sezeni
SELECT
  COUNT(*)
FROM
  hall_seat
  LEFT JOIN projection
    ON projection.hall_id = hall_seat.hall_id
WHERE
  projection.projection_id = 1

-- pocet rezervaci
SELECT
  COUNT(*)
FROM
  booking
  LEFT JOIN projection
    ON projection.projection_id = booking.projection_id
WHERE
  projection.projection_id = 1