SELECT DISTINCT
  hall.branch_office_id as "branch_office_id",
  date_part('year', projection.start) AS "projection_date_year",
  date_part('month', projection.start) AS "projection_date_month",
  date_part('day', projection.start) AS "projection_date_day"
FROM 
  projection
  LEFT JOIN movie
    ON movie.movie_id = projection.movie_id
  LEFT JOIN hall
    ON hall.hall_id = projection.hall_id
  LEFT JOIN branch_office
    ON branch_office.branch_office_id = hall.branch_office_id