<?php

namespace PA032\Bundle\MultikinoBundle\DAO;

use PA032\Bundle\MultikinoBundle\VO\ProgramRecordVO;

use IBA\Bundle\DAOBundle\DAO\DAOBaseImpl;

class ProgramDAO extends DAOBaseImpl
{

	public function getById($projectionId)
	{
		$statement = $this->db->prepare('
			SELECT *
			FROM projection_overview
			WHERE
				projection_id = :projection_id
		');
		$statement->bindParam('projection_id', $projectionId);
		$statement->execute();
		return $this->hydrate($statement->fetchObject());
	}


	/**
	 * @param \Date $date
	 * @param int $branchOfficeId
	 * @return ProgramRecordVO[]
	 */
	public function getProgramRecordByDateAndBranchOfficeId($date, $branchOfficeId)
	{
		$projectionStartFrom = $date->format("Y-m-d H:i:s");
		date_add($date, date_interval_create_from_date_string('1 day'));
		$projectionStartTo = $date->format("Y-m-d H:i:s");

		$records = array();

		$stmt = $this->db->prepare('
			SELECT *
			FROM projection_overview
			WHERE
				branch_office_id = :branch_office_id
				AND start >= :projection_start_from
				AND start < :projection_start_to
		');
		$stmt->bindParam(':branch_office_id', $branchOfficeId);
		$stmt->bindParam(':projection_start_from', $projectionStartFrom);
		$stmt->bindParam(':projection_start_to', $projectionStartTo);
		$stmt->execute();

		while ($row = $stmt->fetchObject()) {
			$records[] = $this->hydrate($row);
		}

		return $records;
	}


	private function hydrate(\stdClass $row)
	{
		$record = new ProgramRecordVO();
		$record->projectionId = $row->projection_id;
		$record->title = $row->title;
		$record->descritiption = $row->descritiption;
		$record->runningTime = $row->running_time;
		$record->releaseYear = $row->release_year;
		$record->projectionStartTime = new \DateTime($row->start);
		$record->projectionPrice = $row->projection_price;
		$record->hallId = $row->hall_id;
		$record->genreTypes = $row->genre_types;
		$record->seatsTotal = $row->seats_total;
		$record->seatsBooked = $row->seats_booked;
		$record->minuteOffsetFromMidnight = (int) ($record->projectionStartTime->format("H") * 60) + (int) $record->projectionStartTime->format("i");

		return $record;
	}
}
