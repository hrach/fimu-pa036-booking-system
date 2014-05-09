<?php

namespace PA032\Bundle\MultikinoBundle\DAO;

use PA032\Bundle\MultikinoBundle\VO\ProgramRecordVO;

use IBA\Bundle\DAOBundle\DAO\DAOBaseImpl;

class ProgramDAO extends DAOBaseImpl
{
	
	/**
	 * 
	 * @param \Date $date
	 * @param int $branchOfficeId
	 * @return ProgramRecordVO[]
	 */
	public function getProgramRecordByDateAndBranchOfficeId($date, $branchOfficeId)
	{
		$strSQL = '
				SELECT
				  projection.projection_id as "projection_id",
				  movie.title AS "title",
				  movie.descritption AS "descritiption",
				  movie.running_time AS "running_time",
				  date_part(\'year\', movie.release_date) AS "release_year",
				  projection.start AS "projection_start_time",
				  projection.price AS "projection_price",
				  hall.hall_id AS "hall_id",
				  (SELECT
				    array(
				      SELECT
				        genre.genre_type
				      FROM
				        movie_genre
				        LEFT JOIN genre
				          ON genre.genre_id = movie_genre.genre_id
				      WHERE
				        movie.movie_id = movie_genre.movie_id
				    )
				  ) AS "genre_types",
				  (
				  SELECT
				    COUNT(*)
				  FROM
				    hall_seat
				    LEFT JOIN projection pr
				      ON pr.hall_id = hall_seat.hall_id
				  WHERE
				    pr.projection_id = projection.projection_id
				  ) AS "seats_total",
				  (
				  SELECT
				    COUNT(*)
				  FROM
				    booking
				    LEFT JOIN projection pr
				      ON pr.projection_id = booking.projection_id
				  WHERE
				    pr.projection_id = projection.projection_id
				  ) AS "seats_booked"
				  
				FROM 
				  projection
				  LEFT JOIN movie
				    ON movie.movie_id = projection.movie_id
				  LEFT JOIN hall
				    ON hall.hall_id = projection.hall_id
				  LEFT JOIN branch_office
				    ON branch_office.branch_office_id = hall.branch_office_id';
		try
		{
			$records = array();
			
			$stmt = $this->db->query($strSQL);
			while ($row = $stmt->fetch(\PDO::FETCH_ASSOC, \PDO::FETCH_ORI_NEXT))
			{
				$record = new ProgramRecordVO();
				$record->projectionId = $row["projection_id"];
				$record->title = $row["title"];
				$record->descritiption = $row["descritiption"];
				$record->runningTime = $row["running_time"];
				$record->releaseYear = $row["release_year"];
				$record->projectionStartTime = $row["projection_start_time"];
				$record->projectionPrice = $row["projection_price"];
				$record->hallId = $row["hall_id"];
				$record->genreTypes = $row["genre_types"];
				$record->seatsTotal = $row["seats_total"];
				$record->seatsBooked = $row["seats_booked"];
				
				array_push($records, $record);
			}
	
		}
		catch (\Exception $e)
		{
			
		}
	
		return $records;
	}
}

?>