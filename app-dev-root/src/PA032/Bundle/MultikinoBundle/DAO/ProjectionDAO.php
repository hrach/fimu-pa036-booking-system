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

		$stmt = $this->db->prepare('
			SELECT *
			FROM projection_schedule
			WHERE
				branch_office_id = :branch_office_id
		');
		$stmt->bindParam(':branch_office_id', $branchOfficeId);
		$stmt->execute();

		while ($row = $stmt->fetch(\PDO::FETCH_ASSOC, \PDO::FETCH_ORI_NEXT)) {
			$date = new DateTime();
			$date->setDate($row["projection_date_year"], $row["projection_date_month"], $row["projection_date_day"]);
			$records[] = $date;
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
