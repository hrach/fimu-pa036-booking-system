<?php

namespace PA032\Bundle\MultikinoBundle\DAO;

use IBA\Bundle\DAOBundle\DAO\DAOBaseImpl;

class ProjectionDAO extends DAOBaseImpl
{
	
	/**
	 * 
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
					  brach_office_id = :branch_office_id
					ORDER BY
					  projection.start
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
		}
		
		return $records;
	}
}

?>