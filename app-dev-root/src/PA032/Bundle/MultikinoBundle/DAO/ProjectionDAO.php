<?php

namespace PA032\Bundle\MultikinoBundle\DAO;

use IBA\Bundle\DAOBundle\DAO\DAOBaseImpl;
use \DateTime;
use PA032\Bundle\MultikinoBundle\VO\SeatVO;

class ProjectionDAO extends DAOBaseImpl
{

	/**
	 * @param int $branchOfficeId
	 */
	public function getDistinctProjectionDatesByIdBranchOffice($branchOfficeId)
	{
		$records = array();

		try
		{
			$stmt = $this->db->prepare('
					SELECT DISTINCT
					  hall.branch_office_id as "branch_office_id",
					  date_part(\'year\', projection.start) AS "projection_date_year",
					  date_part(\'month\', projection.start) AS "projection_date_month",
					  date_part(\'day\', projection.start) AS "projection_date_day"
					FROM
					  projection
					  LEFT JOIN movie
					    ON movie.movie_id = projection.movie_id
					  LEFT JOIN hall
					    ON hall.hall_id = projection.hall_id
					  LEFT JOIN branch_office
					    ON branch_office.branch_office_id = hall.branch_office_id
					WHERE
					  branch_office.branch_office_id = :branch_office_id
					ORDER BY
					  projection_date_year,
					  projection_date_month,
					  projection_date_day
					');
			$stmt->bindParam(':branch_office_id', $branchOfficeId);
			$stmt->execute();

			while ($row = $stmt->fetch(\PDO::FETCH_ASSOC, \PDO::FETCH_ORI_NEXT))
			{
				$date = new DateTime();
				$date->setDate($row["projection_date_year"], $row["projection_date_month"], $row["projection_date_day"]);

				array_push($records, $date);
			}
		}
		catch (\Exception $e)
		{
			throw new \Exception($e);
		}

		return $records;
	}


	public function getSeatsByProjectionId($projectionId)
	{
		$statement = $this->db->prepare('
			SELECT *
			FROM projection_seats
			WHERE projection_id = :projection_id
		');
		$statement->bindParam(':projection_id', $projectionId);
		$statement->execute();

		$seats = [];
		while ($row = $statement->fetch(\PDO::FETCH_OBJ, \PDO::FETCH_ORI_NEXT)) {
			$seat = new SeatVO;
			$seat->seatId = $row->seat_id;
			$seat->type = $row->seat_type_id;
			$seat->row = $row->seat_row;
			$seat->number = $row->seat_number;
			$seat->state = $row->state;

			$seats[] = $seat;
		}

		return $seats;
	}


}
