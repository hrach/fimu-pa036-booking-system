<?php

namespace PA032\Bundle\MultikinoBundle\DAO;

use PA032\Bundle\MultikinoBundle\VO\HallVO;
use IBA\Bundle\DAOBundle\DAO\DAOBaseImpl;

class HallDAO extends DAOBaseImpl
{
	
	/**
	 * 
	 * @param int $branchOfficeId
	 */
	public function getAllByIdBranchOffice($branchOfficeId)
	{
		$records = array();
		
		try
		{
			$stmt = $this->db->prepare("SELECT * FROM hall WHERE brach_office_id = :branch_office_id");
			$stmt->bindParam(':branch_office_id', $branchOfficeId);
			
			$stmt->execute();
			
			while ($row = $stmt->fetch(\PDO::FETCH_ASSOC, \PDO::FETCH_ORI_NEXT))
			{
				$record = new HallVO();
				$record->hallId = $row["hall_id"];
				$record->branchOfficeId = $row["branch_office_id"];
				$record->label = $row["label"];
		
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